.class Lcom/android/systemui/power/PowerNotificationWarnings$18;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showOverheatShutdownedPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$18;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$18;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatShutdownedPopUp()V
    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2100(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 1716
    return-void
.end method
