.class Lcom/android/server/cover/CoverManagerService$2;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverTestModeChanged(IZ)V
    .registers 10
    .param p1, "coverType"    # I
    .param p2, "isEnabled"    # Z

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 118
    iget-object v4, p0, this$0:Lcom/android/server/cover/CoverManagerService;

    # setter for: Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z
    invoke-static {v4, v1}, Lcom/android/server/cover/CoverManagerService;->access$302(Lcom/android/server/cover/CoverManagerService;Z)Z

    .line 119
    if-ne p1, v2, :cond_1d

    .line 120
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    move v4, v3

    move v5, v3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIIIZ)V

    .line 122
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    iget-object v1, p0, this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2, v0}, Lcom/android/server/cover/CoverManagerService;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    .line 127
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    :goto_1c
    return-void

    .line 125
    :cond_1d
    iget-object v1, p0, this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/server/cover/CoverManagerService;->notifyCoverAttachStateChanged(JZ)V

    goto :goto_1c
.end method
