.class public Lcom/android/settings/Utils$LengthFilter;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextLimitToast:Landroid/widget/Toast;

.field private maxLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6112
    iput-object p1, p0, Lcom/android/settings/Utils$LengthFilter;->mContext:Landroid/content/Context;

    .line 6113
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/settings/Utils$LengthFilter;->maxLength:I

    .line 6114
    return-void
.end method

.method private makeTextLimitToast(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 6130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6131
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0e0406

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/Utils$LengthFilter;->maxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6132
    .local v0, "limitStr":Ljava/lang/String;
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    .line 6133
    return-void
.end method

.method private showTextLimitMessage()V
    .locals 1

    .prologue
    .line 6121
    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 6122
    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/Utils$LengthFilter;->makeTextLimitToast(Landroid/content/Context;)V

    .line 6124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 6125
    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6127
    :cond_1
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 6137
    iget v1, p0, Lcom/android/settings/Utils$LengthFilter;->maxLength:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 6138
    .local v0, "keep":I
    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 6139
    invoke-direct {p0}, Lcom/android/settings/Utils$LengthFilter;->showTextLimitMessage()V

    .line 6141
    :cond_0
    if-gtz v0, :cond_1

    .line 6142
    const-string v1, ""

    .line 6149
    :goto_0
    return-object v1

    .line 6143
    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    .line 6144
    const/4 v1, 0x0

    goto :goto_0

    .line 6146
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 6147
    invoke-direct {p0}, Lcom/android/settings/Utils$LengthFilter;->showTextLimitMessage()V

    .line 6149
    :cond_3
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->removeBrokenEmojiChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 6117
    iput p1, p0, Lcom/android/settings/Utils$LengthFilter;->maxLength:I

    .line 6118
    return-void
.end method
