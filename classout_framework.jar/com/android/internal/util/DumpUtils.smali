.class public final Lcom/android/internal/util/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/DumpUtils$Dump;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 8
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "dump"    # Lcom/android/internal/util/DumpUtils$Dump;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "timeout"    # J

    .prologue
    .line 40
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 41
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/DumpUtils$1;

    invoke-direct {v1, v0, p1, p3}, Lcom/android/internal/util/DumpUtils$1;-><init>(Ljava/io/StringWriter;Lcom/android/internal/util/DumpUtils$Dump;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p4, p5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 49
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    :goto_17
    return-void

    .line 51
    :cond_18
    const-string v1, "... timed out"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17
.end method
