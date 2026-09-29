"use client";
import Link from "next/link";
import { useRef } from "react";

export function LoginForm({ magicLink }: { magicLink: "yes" | "no" }) {
  const emailRef = useRef<HTMLInputElement>(null);
  const passwordRef = useRef<HTMLInputElement>(null);

  return (
    <form
      onSubmit={function onSubmitLoginForm(event) {
        event.preventDefault();
        if (magicLink === "no") {
          console.log("password login");
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
