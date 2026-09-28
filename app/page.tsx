"use client";

import { createSupabaseClient } from "@/supabase/utils/client";
import { useEffect } from "react";

export default function Home() {
  useEffect(() => {
    const supabase = createSupabaseClient();

    supabase.storage
      .listBuckets()
      .then((buckets) => {
        console.log("Buckets:", buckets);
      })
      .catch((error) => {
        console.error("Failed to list buckets:", error);
      });
  }, []);
  return (
    <div className="flex flex-col flex-1 items-center justify-center bg-zinc-50 font-sans dark:bg-black">
      <main className="flex flex-1 w-full max-w-3xl flex-col items-center justify-between py-32 px-16 bg-white dark:bg-black sm:items-start"></main>
    </div>
  );
}
