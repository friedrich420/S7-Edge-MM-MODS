.class final Lcom/android/settings/LinkifyUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "LinkifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/LinkifyUtils$OnClickListener;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/LinkifyUtils$1;->val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/LinkifyUtils$1;->val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-interface {v0}, Lcom/android/settings/LinkifyUtils$OnClickListener;->onClick()V

    .line 72
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 78
    return-void
.end method
