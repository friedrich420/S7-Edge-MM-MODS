.class Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "MultiUserSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p2, "x0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    # invokes: Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->access$000(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshVisibility()V

    .line 108
    return-void
.end method
