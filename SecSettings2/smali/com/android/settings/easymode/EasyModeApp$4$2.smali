.class Lcom/android/settings/easymode/EasyModeApp$4$2;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/easymode/EasyModeApp$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/easymode/EasyModeApp$4;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeApp$4;)V
    .locals 0

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeApp$4$2;->this$1:Lcom/android/settings/easymode/EasyModeApp$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1062
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1063
    return-void
.end method
