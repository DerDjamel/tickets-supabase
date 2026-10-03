import Link from "next/link";
import { Ticket } from "@/app/types/global";
import { urlPath } from "@/lib/url-helpers";

export function TicketList({ tickets, tenant }: { tickets: Ticket[]; tenant: string }) {
  return (
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th></th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
        {tickets.map((ticket) => (
          <tr key={ticket.id}>
            <td>{ticket.id}</td>
            <td>
              <Link href={urlPath(`/tickets/details/${ticket.id}`, tenant)}>{ticket.title}</Link>
            </td>
            <td>{ticket.status}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
