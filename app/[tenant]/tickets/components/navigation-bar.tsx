"use client";

import { createSupabaseBrowserClient } from "@/lib/supabase/utils/supabase-browser-client";
import { urlPath } from "@/lib/url-helpers";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useEffect } from "react";

export default function Nav({ tenant }: { tenant: string }) {
  const pathname = usePathname();
  const activeProps = { className: "contrast" };
  const inactiveProps = { className: "secondary outline" };

  const supabase = createSupabaseBrowserClient();
  const router = useRouter();
  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event) => {
      if (event === "SIGNED_OUT") router.push("/1/login");
    });
    return () => {
      subscription.unsubscribe();
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return (
    <nav>
      <ul>
        <li>
          <Link
            role="button"
            href={urlPath("/tickets", tenant)}
            {...(pathname === urlPath("/tickets", tenant) ? activeProps : inactiveProps)}
          >
            Ticket List
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href={urlPath("/tickets/new", tenant)}
            {...(pathname === urlPath("/tickets/new", tenant) ? activeProps : inactiveProps)}
          >
            Create New Ticket
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href={urlPath("/tickets/users", tenant)}
            {...(pathname === urlPath("/tickets/users", tenant) ? activeProps : inactiveProps)}
          >
            User List
          </Link>
        </li>
      </ul>

      <ul>
        <li>
          <Link
            role="button"
            href={urlPath("/tickets/logout", tenant)}
            className="secondary"
            prefetch={false}
            onClick={(event) => {
              event.preventDefault();
              supabase.auth.signOut();
            }}
          >
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}
