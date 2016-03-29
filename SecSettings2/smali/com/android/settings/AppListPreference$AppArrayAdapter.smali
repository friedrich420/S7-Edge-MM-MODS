.class public Lcom/android/settings/AppListPreference$AppArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageDrawables:[Landroid/graphics/drawable/Drawable;

.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/AppListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;
    .param p5, "imageDrawables"    # [Landroid/graphics/drawable/Drawable;
    .param p6, "selectedIndex"    # I

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    .line 60
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    .line 61
    iput p6, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    .line 62
    iput-object p5, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 63
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference$AppArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 68
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040037

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 69
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0d00c5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 70
    .local v0, "checkedTextView":Landroid/widget/RadioButton;
    const v5, 0x7f0d00c7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$AppArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget v5, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    if-ne p1, v5, :cond_1

    .line 74
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    :cond_0
    :goto_0
    const v5, 0x7f0d00c6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 81
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, p1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-object v4

    .line 75
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    # getter for: Lcom/android/settings/AppListPreference;->mShowItemNone:Z
    invoke-static {v5}, Lcom/android/settings/AppListPreference;->access$000(Lcom/android/settings/AppListPreference;)Z

    move-result v5

    if-ne v5, v7, :cond_0

    iget v5, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/android/settings/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 78
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
