import Nav from "./components/navigation-bar";
import TenantName from "./components/tenant-name";

export default function TicketsLayout({ children }: LayoutProps<"/tickets">) {
  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
        <TenantName tenantName="DerDjamel" />
        <Nav />
      </section>
      <section>{children}</section>
    </>
  );
}
