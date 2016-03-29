.class Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$1;
.super Ljava/lang/Object;
.source "TWStatusBarHeaderView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->access$000(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    return-void
.end method
