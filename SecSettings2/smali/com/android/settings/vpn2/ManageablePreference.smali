.class public Lcom/android/settings/vpn2/ManageablePreference;
.super Landroid/preference/Preference;
.source "ManageablePreference.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field mListener:Landroid/view/View$OnClickListener;

.field mManageView:Landroid/view/View;

.field private manageable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "onManage"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->manageable:Z

    .line 38
    sput-object p1, Lcom/android/settings/vpn2/ManageablePreference;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/android/settings/vpn2/ManageablePreference;->mListener:Landroid/view/View$OnClickListener;

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/ManageablePreference;->setPersistent(Z)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/ManageablePreference;->setOrder(I)V

    .line 42
    const v0, 0x7f04019c

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/ManageablePreference;->setWidgetLayoutResource(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public enableManage(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->manageable:Z

    .line 59
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 47
    const v0, 0x7f0d0410

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mManageView:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mManageView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mManageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->manageable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mManageView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_0
    sget-object v0, Lcom/android/settings/vpn2/ManageablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 54
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 55
    return-void
.end method
