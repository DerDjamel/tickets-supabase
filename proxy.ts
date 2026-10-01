import { NextRequest, NextResponse } from "next/server";
import { getSupabaseProxyClient } from "./lib/supabase/utils/supabase-proxy-client";

export async function proxy(req: NextRequest) {
  const { supabase, supabaseResponse } = getSupabaseProxyClient({ request: req });
  const session = await supabase.auth.getSession();
  console.log({ user: session.data?.session?.user });
  const requestedPath = req.nextUrl.pathname;
  const sessionUser = session.data?.session?.user;

  console.log("requestedPath", requestedPath);

  if (requestedPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(new URL("/", req.url));
    }
  } else if (requestedPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(new URL("/tickets", req.url));
    }
  }

  return supabaseResponse.value; // nextjs Response
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};
