import Nav from "./components/navigation-bar";
import TenantName from "./components/tenant-name";

export default async function TicketsLayout({
  children,
  params,
}: LayoutProps<"/[tenant]/tickets">) {
  const { tenant } = await params;
  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
        <TenantName tenantName={tenant} />
        <Nav tenant={tenant} />
      </section>
      <section>{children}</section>
    </>
  );
}
