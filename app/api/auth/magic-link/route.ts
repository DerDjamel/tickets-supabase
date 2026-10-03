import { createSupabaseServerClient } from "@/lib/supabase/utils/supabase-cookies-utils";
import { NextResponse } from "next/server";

export async function POST(request: Request) {
  const formdata = await request.formData();
  const email = formdata.get("email") as string;

  if (!email) {
    return NextResponse.json({ error: "Missing email" }, { status: 400 });
  }

  const supabase = await createSupabaseServerClient();
  const {
    data: { user },
    error,
  } = await supabase.auth.signInWithOtp({
    email: email,
    options: {
      shouldCreateUser: false,
      emailRedirectTo: "/tickets",
    },
  });

  if (error || !user) {
    return NextResponse.redirect(new URL(`/error?type=magiclink`, request.url), { status: 400 });
  }

  const thanksURL = new URL("/magic-thanks", request.url);
  return NextResponse.redirect(thanksURL, {
    status: 302,
  });
}
