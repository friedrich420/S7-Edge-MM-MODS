.class Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;
.super Ljava/lang/Thread;
.source "IptablesLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/IptablesLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommandsLooperThread"
.end annotation


# instance fields
.field public mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 98
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 99
    new-instance v0, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;-><init>()V

    iput-object v0, p0, mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    .line 100
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 101
    return-void
.end method
