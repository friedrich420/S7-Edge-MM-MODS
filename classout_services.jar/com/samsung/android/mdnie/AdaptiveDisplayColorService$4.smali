.class Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$4;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 2

    .prologue
    .line 681
    iput-object p1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 684
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverState:Z
    invoke-static {v0, v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2402(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    .line 685
    return-void
.end method
