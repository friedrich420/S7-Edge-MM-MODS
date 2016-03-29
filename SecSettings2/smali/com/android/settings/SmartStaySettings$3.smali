.class Lcom/android/settings/SmartStaySettings$3;
.super Ljava/lang/Object;
.source "SmartStaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartStaySettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartStaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartStaySettings;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings/SmartStaySettings$3;->this$0:Lcom/android/settings/SmartStaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings$3;->this$0:Lcom/android/settings/SmartStaySettings;

    # getter for: Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/SmartStaySettings;->access$000(Lcom/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 191
    return-void
.end method
