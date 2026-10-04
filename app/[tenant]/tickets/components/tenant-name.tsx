import { createSupabaseServerClient } from "@/lib/supabase/utils/supabase-cookies-utils";

export default async function TenantName({ tenantName = "unknown" }: { tenantName: string }) {
  const supabase = await createSupabaseServerClient();
  const { data, error } = await supabase.from("tenants").select("*").eq("id", tenantName).single();

  console.log({ data, error, tenantName });
  return (
    <header style={{ marginBottom: "10px" }}>
      <div
        style={{
          borderLeft: "4px solid orange",
          display: "block",
          padding: "4px 10px",
          fontSize: "1.1em",
        }}
      >
        Ticket System
        <strong style={{ marginLeft: "1ex" }}>{error ? "unknown" : data.name}</strong>
      </div>
    </header>
  );
}
