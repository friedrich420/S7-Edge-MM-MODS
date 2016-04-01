.class Lmf/javax/xml/transform/SecuritySupport$1;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/transform/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/transform/SecuritySupport;


# direct methods
.method constructor <init>(Lmf/javax/xml/transform/SecuritySupport;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, this$0:Lmf/javax/xml/transform/SecuritySupport;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 70
    if-nez v0, :cond_f

    .line 71
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 72
    :cond_f
    return-object v0
.end method
