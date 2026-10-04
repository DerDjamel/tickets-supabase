import { getSupabaseAdminClient } from "@/lib/supabase/utils/supabase-admin";
import { LoginForm } from "./components/login-form";
import { notFound } from "next/navigation";

export default async function Login({
  searchParams,
  params,
}: {
  searchParams: Promise<{ magicLink: "yes" | "no" }>;
  params: Promise<{ tenant: string }>;
}) {
  const { magicLink } = await searchParams;
  const { tenant } = await params;

  const supabaseAdmin = getSupabaseAdminClient();
  const { data, error } = await supabaseAdmin.from("tenants").select("*").eq("id", tenant).single();

  if (error) {
    return notFound();
  }

  const { name: tenantName } = data;

  return (
    <div className="mt-7">
      <LoginForm magicLink={magicLink || "no"} tenant={tenantName} />
    </div>
  );
}
