.class Lcom/android/server/trust/TrustManagerService$4;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    .prologue
    .line 841
    iput-object p1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public onStrongAuthRequiredChanged(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 844
    iget-object v0, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 845
    return-void
.end method
