.class Lcom/android/systemui/recents/RecentsResizeTaskDialog$2;
.super Ljava/lang/Object;
.source "RecentsResizeTaskDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsResizeTaskDialog;->createResizeTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$2;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$2;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->dismiss()V

    .line 117
    return-void
.end method
