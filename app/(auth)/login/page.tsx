import { LoginForm } from "./components/login-form";

export default async function Login({
  searchParams,
}: {
  searchParams: Promise<{ magicLink: "yes" | "no" }>;
}) {
  const { magicLink } = await searchParams;

  return (
    <div className="mt-7">
      <LoginForm magicLink={magicLink || "no"} />
    </div>
  );
}
