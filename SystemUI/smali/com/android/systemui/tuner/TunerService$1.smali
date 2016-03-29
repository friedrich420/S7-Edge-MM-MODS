.class Lcom/android/systemui/tuner/TunerService$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "TunerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/TunerService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/TunerService;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerService$1;->this$0:Lcom/android/systemui/tuner/TunerService;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$1;->this$0:Lcom/android/systemui/tuner/TunerService;

    # setter for: Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I
    invoke-static {v0, p1}, Lcom/android/systemui/tuner/TunerService;->access$002(Lcom/android/systemui/tuner/TunerService;I)I

    .line 75
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$1;->this$0:Lcom/android/systemui/tuner/TunerService;

    # invokes: Lcom/android/systemui/tuner/TunerService;->reloadAll()V
    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->access$100(Lcom/android/systemui/tuner/TunerService;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$1;->this$0:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/TunerService;->reregisterAll()V

    .line 77
    return-void
.end method
