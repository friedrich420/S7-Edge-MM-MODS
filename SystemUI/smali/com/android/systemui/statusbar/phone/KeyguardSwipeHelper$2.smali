.class Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$2;
.super Ljava/lang/Object;
.source "KeyguardSwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->startAnimationAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->makeExpandedInvisible()V

    .line 346
    return-void
.end method
