.class Lcom/android/settings/IconBackgrounds$3;
.super Ljava/lang/Object;
.source "IconBackgrounds.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IconBackgrounds;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IconBackgrounds;


# direct methods
.method constructor <init>(Lcom/android/settings/IconBackgrounds;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/IconBackgrounds$3;->this$0:Lcom/android/settings/IconBackgrounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds$3;->this$0:Lcom/android/settings/IconBackgrounds;

    invoke-virtual {v0}, Lcom/android/settings/IconBackgrounds;->finish()V

    .line 151
    return-void
.end method
