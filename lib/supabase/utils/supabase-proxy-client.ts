import { createServerClient } from "@supabase/ssr";
import { NextRequest, NextResponse } from "next/server";

export function getSupabaseProxyClient({ request }: { request: NextRequest }) {
  const supabaseResponse = {
    value: NextResponse.next({ request: request }),
  };

  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    {
      cookies: {
        getAll() {
          return request.cookies.getAll();
        },

        setAll(cookiesToSet) {
          cookiesToSet.forEach(({ name, value }) => {
            request.cookies.set(name, value);
          });

          supabaseResponse.value = NextResponse.next({
            request,
          });

          cookiesToSet.forEach(({ name, value, options }) => {
            supabaseResponse.value.cookies.set(name, value, options);
          });
        },
      },
    },
  );

  return { supabase, supabaseResponse };
}
