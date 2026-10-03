"use client";
import { createSupabaseBrowserClient } from "@/lib/supabase/utils/supabase-browser-client";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useRef } from "react";

export function LoginForm({ magicLink }: { magicLink: "yes" | "no" }) {
  const emailRef = useRef<HTMLInputElement>(null);
  const passwordRef = useRef<HTMLInputElement>(null);
  const supabase = createSupabaseBrowserClient();
  const router = useRouter();

  return (
    <form
      method="POST"
      action="/api/auth/login"
      onSubmit={function onSubmitLoginForm(event) {
        event.preventDefault();
        if (magicLink === "no") {
          const email = emailRef.current?.value;
          const password = passwordRef.current?.value;
          if (email && password) {
            supabase.auth.signInWithPassword({ email, password }).then((result) => {
              if (result.data?.user) {
                router.push("/tickets");
              } else {
                alert(result.error?.message);
              }
            });
          } else {
            alert("Please enter both email and password");
          }
        }
        if (magicLink === "yes") {
          console.log("magic link login");
        }
      }}
    >
      <article style={{ maxWidth: "420px", margin: "auto" }}>
        <header>Login</header>

        <fieldset>
          <label htmlFor="email">Email</label>
          <input ref={emailRef} type="email" id="email" name="email" required />

          {magicLink === "no" && (
            <>
              <label htmlFor="password">Password</label>
              <input ref={passwordRef} type="password" id="password" name="password" required />
            </>
          )}
        </fieldset>
        <p>
          {magicLink === "no" ? (
            <Link
              href={{
                pathname: "/login",
                query: { magicLink: "yes" },
              }}
            >
              Go to Magic link login
            </Link>
          ) : (
            <Link
              href={{
                pathname: "/login",
                query: { magicLink: "no" },
              }}
            >
              Go to password login
            </Link>
          )}
        </p>
        <button type="submit">
          Sing in with {magicLink === "yes" ? "Magic link" : "password"}
        </button>
      </article>
    </form>
  );
}
