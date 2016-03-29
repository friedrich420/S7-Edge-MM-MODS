.class Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$4;
.super Landroid/database/DataSetObserver;
.source "KeyguardUserSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    # invokes: Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->refresh()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->access$400(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 228
    return-void
.end method
