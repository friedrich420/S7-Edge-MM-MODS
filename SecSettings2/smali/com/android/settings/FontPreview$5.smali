.class Lcom/android/settings/FontPreview$5;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontPreview;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontPreview;


# direct methods
.method constructor <init>(Lcom/android/settings/FontPreview;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lcom/android/settings/FontPreview$5;->this$0:Lcom/android/settings/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/settings/FontPreview$5;->this$0:Lcom/android/settings/FontPreview;

    # invokes: Lcom/android/settings/FontPreview;->doneFontPreview()V
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$700(Lcom/android/settings/FontPreview;)V

    .line 926
    return-void
.end method
