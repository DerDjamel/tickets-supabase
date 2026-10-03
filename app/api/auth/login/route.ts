import { createSupabaseServerClient } from "@/lib/supabase/utils/supabase-cookies-utils";
import { NextResponse } from "next/server";

export async function POST(request: Request) {
  const formdata = await request.formData();
  const email = formdata.get("email") as string;
  const password = formdata.get("password") as string;

  if (!email || !password) {
    return NextResponse.json({ error: "Missing email or password" }, { status: 400 });
  }

  const supabase = await createSupabaseServerClient();
  const {
    data: { user },
    error,
  } = await supabase.auth.signInWithPassword({
    email: email,
    password: password,
  });

  if (error || !user) {
    return NextResponse.redirect(new URL(`/error?type=login-failed`, request.url), { status: 400 });
  }

  return NextResponse.redirect(new URL("/tickets", request.url), {
    status: 302,
  });
}
