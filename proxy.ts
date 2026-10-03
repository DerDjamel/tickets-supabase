import { NextRequest, NextResponse } from "next/server";
import { getSupabaseProxyClient } from "./lib/supabase/utils/supabase-proxy-client";

export async function proxy(req: NextRequest) {
  const { supabase, supabaseResponse } = getSupabaseProxyClient({ request: req });
  const session = await supabase.auth.getSession();

  const requestedPath = req.nextUrl.pathname;
  const sessionUser = session.data?.session?.user;

  const [tenant, ...restOfPath] = requestedPath.substr(1).split("/");
  const applicationPath = "/" + restOfPath.join("/");

  if (!/[a-z0-9-_]+/.test(tenant)) {
    return NextResponse.rewrite(new URL("/not-found", req.url));
  }

  if (applicationPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(new URL(`/${tenant}/`, req.url));
    }
  } else if (applicationPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(new URL(`/${tenant}/tickets`, req.url));
    }
  }

  return supabaseResponse.value; // nextjs Response
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};
