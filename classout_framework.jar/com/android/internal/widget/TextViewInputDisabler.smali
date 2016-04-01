.class public Lcom/android/internal/widget/TextViewInputDisabler;
.super Ljava/lang/Object;
.source "TextViewInputDisabler.java"


# instance fields
.field private mDefaultFilters:[Landroid/text/InputFilter;

.field private mNoInputFilters:[Landroid/text/InputFilter;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/widget/TextViewInputDisabler$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/TextViewInputDisabler$1;-><init>(Lcom/android/internal/widget/TextViewInputDisabler;)V

    aput-object v2, v0, v1

    iput-object v0, p0, mNoInputFilters:[Landroid/text/InputFilter;

    .line 42
    iput-object p1, p0, mTextView:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    iput-object v0, p0, mDefaultFilters:[Landroid/text/InputFilter;

    .line 44
    return-void
.end method


# virtual methods
.method public setInputEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 47
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    iget-object v0, p0, mDefaultFilters:[Landroid/text/InputFilter;

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 48
    return-void

    .line 47
    :cond_a
    iget-object v0, p0, mNoInputFilters:[Landroid/text/InputFilter;

    goto :goto_6
.end method
