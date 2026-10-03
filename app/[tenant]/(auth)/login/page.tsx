import { LoginForm } from "./components/login-form";

export default async function Login({
  searchParams,
  params,
}: {
  searchParams: Promise<{ magicLink: "yes" | "no" }>;
  params: Promise<{ tenant: string }>;
}) {
  const { magicLink } = await searchParams;
  const { tenant } = await params;

  return (
    <div className="mt-7">
      <LoginForm magicLink={magicLink || "no"} tenant={tenant} />
    </div>
  );
}
