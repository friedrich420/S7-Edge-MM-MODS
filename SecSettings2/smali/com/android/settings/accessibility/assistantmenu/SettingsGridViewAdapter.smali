.class public Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsGridViewAdapter.java"


# static fields
.field private static mIsLongClick:Z


# instance fields
.field private mFragment:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

.field private final mHandler:Landroid/os/Handler;

.field private mImageMode:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mIsLongClick:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;ILjava/util/ArrayList;Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Fragment;
    .param p2, "layout"    # I
    .param p4, "imageMode"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;",
            "Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, "itemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .line 44
    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mHandler:Landroid/os/Handler;

    .line 62
    check-cast p1, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .end local p1    # "context":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .line 63
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    iput-object p3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    .line 65
    iput p2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mLayout:I

    .line 66
    iput-object p4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mIsLongClick:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 27
    sput-boolean p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mIsLongClick:Z

    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f0d0496

    const/16 v8, 0x8

    .line 83
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v1

    .line 85
    .local v1, "itemAct":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mLayout:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    const v5, 0x7f0d0497

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 88
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getIcon()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    const v5, 0x7f0d0499

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 90
    .local v2, "subImageView":Landroid/widget/ImageView;
    const v5, 0x7f0d0498

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 91
    .local v3, "subImagebackView":Landroid/widget/ImageView;
    sget-object v5, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v1, v5}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v1, v5}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 93
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_3

    .line 94
    const v5, 0x7f020069

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    const v5, -0xb451b0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 109
    :goto_0
    const v5, 0x7f0d038e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 112
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetIsWidgetVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetUpperDetectedItemId()I

    move-result v5

    if-eq v5, p1, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetLowerDetectedItemId()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 121
    :cond_1
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, -0x333334

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 126
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    new-instance v5, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;

    invoke-direct {v5, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    return-object p2

    .line 97
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_4

    .line 98
    const v5, 0x7f020068

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    const v5, -0x262ef0f1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_0

    .line 102
    :cond_4
    const-string v5, "SettingsGridViewAdapter"

    const-string v6, "getView"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    :cond_5
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
