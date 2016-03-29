.class Lcom/android/settings/UnlockEffect$2;
.super Ljava/lang/Object;
.source "UnlockEffect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UnlockEffect;->createDialogforTablet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UnlockEffect;


# direct methods
.method constructor <init>(Lcom/android/settings/UnlockEffect;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/UnlockEffect$2;->this$0:Lcom/android/settings/UnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/UnlockEffect$2;->this$0:Lcom/android/settings/UnlockEffect;

    invoke-virtual {v0}, Lcom/android/settings/UnlockEffect;->finish()V

    .line 179
    return-void
.end method
