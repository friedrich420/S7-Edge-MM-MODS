.class Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field private mHasExtendedInfo:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mKnoxWorkspaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private final mLaunchedFromPackage:Ljava/lang/String;

.field private final mLaunchedFromUid:I

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;Z)V
    .registers 10
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "launchedFromPackage"    # Ljava/lang/String;
    .param p8, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1693
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1685
    const/4 v0, -0x1

    iput v0, p0, mLastChosenPosition:I

    .line 1694
    iput-object p7, p0, mLaunchedFromPackage:Ljava/lang/String;

    .line 1695
    iput-object p3, p0, mIntents:Ljava/util/List;

    .line 1696
    iput-object p4, p0, mInitialIntents:[Landroid/content/Intent;

    .line 1697
    iput-object p5, p0, mBaseResolveList:Ljava/util/List;

    .line 1698
    iput p6, p0, mLaunchedFromUid:I

    .line 1699
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    .line 1700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDisplayList:Ljava/util/List;

    .line 1701
    iput-boolean p8, p0, mFilterLastUsed:Z

    .line 1703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mKnoxWorkspaceMap:Ljava/util/HashMap;

    .line 1705
    invoke-direct {p0}, rebuildList()V

    .line 1706
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1712
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1685
    const/4 v0, -0x1

    iput v0, p0, mLastChosenPosition:I

    .line 1713
    const/4 v0, 0x0

    iput-object v0, p0, mLaunchedFromPackage:Ljava/lang/String;

    .line 1714
    iput-object p3, p0, mIntents:Ljava/util/List;

    .line 1715
    iput-object p4, p0, mInitialIntents:[Landroid/content/Intent;

    .line 1716
    iput-object p5, p0, mBaseResolveList:Ljava/util/List;

    .line 1717
    iput p6, p0, mLaunchedFromUid:I

    .line 1718
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    .line 1719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDisplayList:Ljava/util/List;

    .line 1720
    iput-boolean p7, p0, mFilterLastUsed:Z

    .line 1722
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mKnoxWorkspaceMap:Ljava/util/HashMap;

    .line 1724
    invoke-direct {p0}, rebuildList()V

    .line 1725
    return-void
.end method

.method private addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .registers 4
    .param p1, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 2200
    # getter for: Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$1300(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-nez v0, :cond_2c

    .line 2205
    # getter for: Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$1300(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v0}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2206
    iget-object v0, p0, mKnoxWorkspaceMap:Ljava/util/HashMap;

    # getter for: Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$1300(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    :goto_28
    return-void

    .line 2209
    :cond_29
    iput-object p1, p0, mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    goto :goto_28

    .line 2211
    :cond_2c
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28
.end method

.method private addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 15
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "extraInfo"    # Ljava/lang/CharSequence;
    .param p3, "roLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 2162
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v9

    .line 2163
    .local v9, "count":I
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    .line 2164
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2165
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 2166
    .local v6, "replaceIntent":Landroid/content/Intent;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 2168
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-direct {p0, v0}, addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 2169
    if-ne v6, v2, :cond_31

    .line 2172
    const/4 v10, 0x1

    .local v10, "i":I
    move v7, v9

    .local v7, "N":I
    :goto_25
    if-ge v10, v7, :cond_31

    .line 2173
    invoke-virtual {p1, v10}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v8

    .line 2174
    .local v8, "altIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    .line 2172
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    .line 2177
    .end local v7    # "N":I
    .end local v8    # "altIntent":Landroid/content/Intent;
    .end local v10    # "i":I
    :cond_31
    invoke-direct {p0, v3}, updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    .line 2178
    return-void
.end method

.method private addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .registers 15
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2075
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 2076
    .local v1, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 2077
    .local v3, "intoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_42

    .line 2078
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2079
    .local v5, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 2081
    .local v0, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_13
    if-ge v4, v3, :cond_25

    .line 2082
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 2083
    .local v6, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-direct {p0, v5, v6}, isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 2084
    const/4 v0, 0x1

    .line 2085
    invoke-virtual {v6, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 2089
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_25
    if-nez v0, :cond_3c

    .line 2090
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2077
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2081
    .restart local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2095
    .end local v0    # "found":Z
    .end local v4    # "j":I
    .end local v5    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_42
    return-void
.end method

.method private isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .registers 6
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    .line 2098
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2099
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2317
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    .line 2318
    .local v1, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    iget-object v3, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050273

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    # setter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$1402(Lcom/android/internal/app/ResolverActivity;F)F

    .line 2320
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2321
    .local v2, "label":Ljava/lang/CharSequence;
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 2322
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$1400(Lcom/android/internal/app/ResolverActivity;)F

    move-result v4

    iget-object v5, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->getFontScale()F
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$1500(Lcom/android/internal/app/ResolverActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2323
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2325
    :cond_47
    invoke-virtual {p0, p2}, showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 2326
    iget-object v3, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050274

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    # setter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$1402(Lcom/android/internal/app/ResolverActivity;F)F

    .line 2328
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2329
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v4, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$1400(Lcom/android/internal/app/ResolverActivity;)F

    move-result v4

    iget-object v5, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->getFontScale()F
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$1500(Lcom/android/internal/app/ResolverActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2330
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2334
    :goto_80
    instance-of v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v3, :cond_9c

    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v3

    if-nez v3, :cond_9c

    .line 2336
    new-instance v4, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;

    iget-object v5, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {v4, v5, v3}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2338
    :cond_9c
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2339
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v3, :cond_c2

    .line 2340
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2341
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_c9

    .line 2342
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2343
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2344
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2349
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_c2
    :goto_c2
    return-void

    .line 2332
    :cond_c3
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_80

    .line 2346
    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_c9
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c2
.end method

.method private processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V
    .registers 23
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;II",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2114
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    sub-int v15, p3, p2

    add-int/lit8 v11, v15, 0x1

    .line 2115
    .local v11, "num":I
    const/4 v15, 0x1

    if-ne v11, v15, :cond_12

    .line 2117
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v15, v2}, addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2158
    :cond_11
    return-void

    .line 2119
    :cond_12
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, mHasExtendedInfo:Z

    .line 2120
    const/4 v14, 0x0

    .line 2121
    .local v14, "usePkg":Z
    const/4 v15, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2122
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 2123
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_32

    .line 2124
    const/4 v14, 0x1

    .line 2126
    :cond_32
    if-nez v14, :cond_6e

    .line 2128
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2130
    .local v5, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2131
    add-int/lit8 v7, p2, 0x1

    .local v7, "j":I
    :goto_3e
    move/from16 v0, p3

    if-gt v7, v0, :cond_6b

    .line 2132
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 2133
    .local v9, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2134
    .local v8, "jApp":Ljava/lang/CharSequence;
    if-eqz v8, :cond_6a

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_91

    .line 2135
    :cond_6a
    const/4 v14, 0x1

    .line 2142
    .end local v8    # "jApp":Ljava/lang/CharSequence;
    .end local v9    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6b
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 2144
    .end local v5    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v7    # "j":I
    :cond_6e
    move/from16 v10, p2

    .local v10, "k":I
    :goto_70
    move/from16 v0, p3

    if-gt v10, v0, :cond_11

    .line 2145
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 2146
    .local v12, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2148
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_97

    .line 2150
    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2155
    .local v6, "extraInfo":Ljava/lang/CharSequence;
    :goto_87
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v12, v6, v1}, addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2144
    add-int/lit8 v10, v10, 0x1

    goto :goto_70

    .line 2138
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v6    # "extraInfo":Ljava/lang/CharSequence;
    .end local v10    # "k":I
    .end local v12    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v5    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v7    # "j":I
    .restart local v8    # "jApp":Ljava/lang/CharSequence;
    .restart local v9    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_91
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2131
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 2153
    .end local v5    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v7    # "j":I
    .end local v8    # "jApp":Ljava/lang/CharSequence;
    .end local v9    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "k":I
    .restart local v12    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_97
    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "extraInfo":Ljava/lang/CharSequence;
    goto :goto_87
.end method

.method private rebuildList()V
    .registers 41

    .prologue
    .line 1791
    const/4 v15, 0x0

    .line 1794
    .local v15, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v27

    .line 1795
    .local v27, "primaryIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v7, 0x10000

    move-object/from16 v0, v27

    invoke-interface {v3, v0, v4, v7}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_27} :catch_b3

    .line 1803
    .end local v27    # "primaryIntent":Landroid/content/Intent;
    :goto_27
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1805
    move-object/from16 v0, p0

    iget-object v3, v0, mKnoxWorkspaceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1807
    move-object/from16 v0, p0

    iget-object v3, v0, mDisplayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1808
    move-object/from16 v0, p0

    iget-object v3, v0, mBaseResolveList:Ljava/util/List;

    if-eqz v3, :cond_d0

    .line 1809
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mOrigResolveList:Ljava/util/List;

    .line 1810
    .restart local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v4}, addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 1887
    :cond_5a
    if-eqz v15, :cond_4a5

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "N":I
    if-lez v13, :cond_4a5

    .line 1896
    add-int/lit8 v3, v13, -0x1

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1897
    .local v32, "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    move/from16 v36, v13

    .line 1898
    .local v36, "to":I
    move/from16 v18, v13

    .line 1899
    .local v18, "from":I
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    .line 1901
    .local v25, "lastUserId":I
    move/from16 v35, v13

    .line 1903
    .local v35, "size":I
    add-int/lit8 v23, v35, -0x1

    .local v23, "j":I
    :goto_83
    if-ltz v23, :cond_318

    .line 1905
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_2ad

    .line 1907
    move/from16 v0, v23

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    check-cast v32, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1908
    .restart local v32    # "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 1909
    .local v16, "currentUserId":I
    move/from16 v0, v25

    move/from16 v1, v16

    if-ne v0, v1, :cond_240

    if-lez v23, :cond_240

    .line 1903
    .end local v16    # "currentUserId":I
    :cond_b0
    add-int/lit8 v23, v23, -0x1

    goto :goto_83

    .line 1798
    .end local v13    # "N":I
    .end local v18    # "from":I
    .end local v23    # "j":I
    .end local v25    # "lastUserId":I
    .end local v32    # "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v35    # "size":I
    .end local v36    # "to":I
    :catch_b3
    move-exception v30

    .line 1799
    .local v30, "re":Landroid/os/RemoteException;
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error calling setLastChosenActivity\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 1812
    .end local v30    # "re":Landroid/os/RemoteException;
    :cond_d0
    invoke-virtual/range {p0 .. p0}, shouldGetResolvedFilter()Z

    move-result v34

    .line 1813
    .local v34, "shouldGetResolvedFilter":Z
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->shouldGetActivityMetadata()Z

    move-result v33

    .line 1814
    .local v33, "shouldGetActivityMetadata":Z
    const/16 v20, 0x0

    .local v20, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, mIntents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    .restart local v13    # "N":I
    :goto_e6
    move/from16 v0, v20

    if-ge v0, v13, :cond_1e9

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, mIntents:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/Intent;

    .line 1818
    .local v22, "intent":Landroid/content/Intent;
    :try_start_f6
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    const/4 v3, 0x1

    const-string v4, "DocumentsUIPolicy"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_116

    .line 1820
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/app/ResolverActivity;->mDropsDocumentsUI:Z
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$902(Lcom/android/internal/app/ResolverActivity;Z)Z
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_116} :catch_1d2

    .line 1826
    :cond_116
    :goto_116
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v7, 0x10000

    if-eqz v34, :cond_1dc

    const/16 v3, 0x40

    :goto_124
    or-int/2addr v7, v3

    if-eqz v33, :cond_1df

    const/16 v3, 0x80

    :goto_129
    or-int/2addr v3, v7

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    .line 1830
    .local v21, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v21, :cond_1e5

    .line 1831
    if-nez v15, :cond_13d

    .line 1832
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mOrigResolveList:Ljava/util/List;

    .line 1834
    .restart local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_13d
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v15, v1, v2}, addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 1837
    if-nez v20, :cond_1e5

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1e5

    .line 1838
    const/16 v23, 0x0

    .restart local v23    # "j":I
    :goto_158
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_1e5

    .line 1839
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v24, v3, -0x1

    .local v24, "k":I
    :goto_16e
    if-ltz v24, :cond_1cf

    .line 1840
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1842
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e2

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e2

    .line 1844
    move-object/from16 v0, p0

    iget-object v3, v0, mOrigResolveList:Ljava/util/List;

    if-ne v3, v15, :cond_1ca

    .line 1845
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, mOrigResolveList:Ljava/util/List;

    .line 1848
    :cond_1ca
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1838
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1cf
    add-int/lit8 v23, v23, 0x1

    goto :goto_158

    .line 1822
    .end local v21    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "j":I
    .end local v24    # "k":I
    :catch_1d2
    move-exception v17

    .line 1823
    .local v17, "e":Ljava/lang/Exception;
    const-string v3, "ResolverActivity"

    const-string v4, "Exception occures while getting values from current intent !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_116

    .line 1826
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_1dc
    const/4 v3, 0x0

    goto/16 :goto_124

    :cond_1df
    const/4 v3, 0x0

    goto/16 :goto_129

    .line 1839
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v21    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "j":I
    .restart local v24    # "k":I
    :cond_1e2
    add-int/lit8 v24, v24, -0x1

    goto :goto_16e

    .line 1814
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v23    # "j":I
    .end local v24    # "k":I
    :cond_1e5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_e6

    .line 1863
    .end local v21    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v22    # "intent":Landroid/content/Intent;
    :cond_1e9
    if-eqz v15, :cond_5a

    .line 1864
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v20, v3, -0x1

    :goto_1f1
    if-ltz v20, :cond_5a

    .line 1865
    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1867
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, mLaunchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, mLaunchedFromUid:I

    iget-object v7, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v9, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/app/ActivityManager;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZ)I

    move-result v19

    .line 1876
    .local v19, "granted":I
    if-eqz v19, :cond_23d

    .line 1878
    move-object/from16 v0, p0

    iget-object v3, v0, mOrigResolveList:Ljava/util/List;

    if-ne v3, v15, :cond_238

    .line 1879
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, mOrigResolveList:Ljava/util/List;

    .line 1881
    :cond_238
    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1864
    :cond_23d
    add-int/lit8 v20, v20, -0x1

    goto :goto_1f1

    .line 1914
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v19    # "granted":I
    .end local v20    # "i":I
    .end local v33    # "shouldGetActivityMetadata":Z
    .end local v34    # "shouldGetResolvedFilter":Z
    .restart local v16    # "currentUserId":I
    .restart local v18    # "from":I
    .restart local v23    # "j":I
    .restart local v25    # "lastUserId":I
    .restart local v32    # "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v35    # "size":I
    .restart local v36    # "to":I
    :cond_240
    move/from16 v36, v18

    .line 1915
    if-eqz v23, :cond_29d

    .line 1916
    add-int/lit8 v18, v23, 0x1

    .line 1923
    :goto_246
    move/from16 v25, v16

    .line 1924
    move/from16 v13, v36

    .line 1935
    .end local v16    # "currentUserId":I
    :goto_24a
    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1936
    .local v11, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v28

    .line 1937
    .local v28, "r0":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v20, v18, 0x1

    .restart local v20    # "i":I
    :goto_259
    move/from16 v0, v20

    if-ge v0, v13, :cond_b0

    .line 1938
    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 1946
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_2b2

    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2b2

    .line 1947
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bypassing default and priority check for NFC "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_29a
    :goto_29a
    add-int/lit8 v20, v20, 0x1

    goto :goto_259

    .line 1917
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v20    # "i":I
    .end local v28    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "currentUserId":I
    :cond_29d
    if-nez v23, :cond_2aa

    move/from16 v0, v25

    move/from16 v1, v16

    if-eq v0, v1, :cond_2aa

    .line 1918
    add-int/lit8 v23, v23, 0x1

    .line 1919
    move/from16 v18, v23

    goto :goto_246

    .line 1921
    :cond_2aa
    move/from16 v18, v23

    goto :goto_246

    .line 1928
    .end local v16    # "currentUserId":I
    :cond_2ad
    const/16 v18, 0x0

    .line 1929
    const/16 v23, -0x1

    goto :goto_24a

    .line 1951
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v20    # "i":I
    .restart local v28    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_2b2
    move-object/from16 v0, v28

    iget v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v4, :cond_2c2

    move-object/from16 v0, v28

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v4, v6, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v3, v4, :cond_29a

    .line 1953
    :cond_2c2
    :goto_2c2
    move/from16 v0, v20

    if-ge v0, v13, :cond_29a

    .line 1954
    move-object/from16 v0, p0

    iget-object v3, v0, mOrigResolveList:Ljava/util/List;

    if-ne v3, v15, :cond_2d9

    .line 1955
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, mOrigResolveList:Ljava/util/List;

    .line 1959
    :cond_2d9
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_310

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".documentsui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_310

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDropsDocumentsUI:Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_310

    .line 1962
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1963
    move-object/from16 v0, p0

    iget-object v3, v0, mOrigResolveList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1964
    add-int/lit8 v13, v13, -0x1

    .line 1965
    move/from16 v20, v13

    .line 1966
    goto :goto_29a

    .line 1968
    :cond_310
    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1969
    add-int/lit8 v13, v13, -0x1

    goto :goto_2c2

    .line 1978
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v20    # "i":I
    .end local v28    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_318
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_326

    .line 1980
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    .line 1983
    :cond_326
    const/4 v3, 0x1

    if-le v13, v3, :cond_33f

    .line 1984
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/internal/app/ResolverComparator;->compute(Ljava/util/List;)V

    .line 1985
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v3

    invoke-static {v15, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1988
    :cond_33f
    move-object/from16 v0, p0

    iget-object v3, v0, mInitialIntents:[Landroid/content/Intent;

    if-eqz v3, :cond_3e5

    .line 1989
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_347
    move-object/from16 v0, p0

    iget-object v3, v0, mInitialIntents:[Landroid/content/Intent;

    array-length v3, v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_3e5

    .line 1990
    move-object/from16 v0, p0

    iget-object v3, v0, mInitialIntents:[Landroid/content/Intent;

    aget-object v5, v3, v20

    .line 1991
    .local v5, "ii":Landroid/content/Intent;
    if-nez v5, :cond_35b

    .line 1989
    :goto_358
    add-int/lit8 v20, v20, 0x1

    goto :goto_347

    .line 1994
    :cond_35b
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 1996
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_383

    .line 1997
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_358

    .line 2001
    :cond_383
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2002
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2003
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/UserManager;

    .line 2005
    .local v39, "userManager":Landroid/os/UserManager;
    instance-of v3, v5, Landroid/content/pm/LabeledIntent;

    if-eqz v3, :cond_3bb

    move-object/from16 v26, v5

    .line 2006
    check-cast v26, Landroid/content/pm/LabeledIntent;

    .line 2007
    .local v26, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 2008
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v3

    iput v3, v6, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 2009
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v6, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2010
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v3

    iput v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    .line 2011
    iget v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    iput v3, v6, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 2013
    .end local v26    # "li":Landroid/content/pm/LabeledIntent;
    :cond_3bb
    invoke-virtual/range {v39 .. v39}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_3c7

    .line 2014
    const/4 v3, 0x1

    iput-boolean v3, v6, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 2015
    const/4 v3, 0x0

    iput v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    .line 2017
    :cond_3c7
    new-instance v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    goto/16 :goto_358

    .line 2024
    .end local v5    # "ii":Landroid/content/Intent;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v20    # "i":I
    .end local v39    # "userManager":Landroid/os/UserManager;
    :cond_3e5
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 2025
    .restart local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v28

    .line 2026
    .restart local v28    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 2027
    .local v9, "start":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 2028
    .local v12, "r0Label":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mHasExtendedInfo:Z

    .line 2029
    const/16 v20, 0x1

    .restart local v20    # "i":I
    :goto_407
    move/from16 v0, v20

    if-ge v0, v13, :cond_49d

    .line 2030
    if-nez v12, :cond_413

    .line 2031
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2033
    :cond_413
    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 2034
    .local v29, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 2035
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v31

    .line 2036
    .local v31, "riLabel":Ljava/lang/CharSequence;
    if-nez v31, :cond_436

    .line 2037
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 2039
    :cond_436
    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48c

    .line 2041
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_488

    .line 2042
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v37

    .line 2043
    .local v37, "u0":I
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v38

    .line 2044
    .local v38, "ui":I
    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_48c

    .line 2045
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking uid for NFC "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " and "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    .end local v37    # "u0":I
    .end local v38    # "ui":I
    :cond_488
    :goto_488
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_407

    .line 2053
    :cond_48c
    add-int/lit8 v10, v20, -0x1

    move-object/from16 v7, p0

    move-object v8, v15

    invoke-direct/range {v7 .. v12}, processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 2054
    move-object/from16 v11, v29

    .line 2055
    move-object/from16 v28, v6

    .line 2056
    move-object/from16 v12, v31

    .line 2057
    move/from16 v9, v20

    goto :goto_488

    .line 2060
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v29    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v31    # "riLabel":Ljava/lang/CharSequence;
    :cond_49d
    add-int/lit8 v10, v13, -0x1

    move-object/from16 v7, p0

    move-object v8, v15

    invoke-direct/range {v7 .. v12}, processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 2065
    .end local v9    # "start":I
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v12    # "r0Label":Ljava/lang/CharSequence;
    .end local v13    # "N":I
    .end local v18    # "from":I
    .end local v20    # "i":I
    .end local v23    # "j":I
    .end local v25    # "lastUserId":I
    .end local v28    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v32    # "riToGetUser":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v35    # "size":I
    .end local v36    # "to":I
    :cond_4a5
    move-object/from16 v0, p0

    iget-object v3, v0, mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v3, :cond_4bb

    move-object/from16 v0, p0

    iget v3, v0, mLastChosenPosition:I

    if-ltz v3, :cond_4bb

    .line 2066
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, mLastChosenPosition:I

    .line 2067
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mFilterLastUsed:Z

    .line 2070
    :cond_4bb
    invoke-virtual/range {p0 .. p0}, onListRebuilt()V

    .line 2071
    return-void
.end method

.method private updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2181
    iget-object v0, p0, mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_69

    iget-object v0, p0, mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2186
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2187
    iget-object v0, p0, mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_69

    .line 2189
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mLastChosenPosition:I

    .line 2190
    const-string v0, "ResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processGroup set last chosen to NFC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mLastChosenPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    :cond_69
    :goto_69
    return-void

    .line 2194
    :cond_6a
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mLastChosenPosition:I

    goto :goto_69
.end method


# virtual methods
.method public final bindView(ILandroid/view/View;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2313
    invoke-virtual {p0, p1}, getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-direct {p0, p2, v0}, onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 2314
    return-void
.end method

.method public final createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2291
    invoke-virtual {p0, p1}, onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2292
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2293
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2294
    return-object v1
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 2229
    iget-object v1, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 2230
    .local v0, "result":I
    iget-object v1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-boolean v1, p0, mFilterLastUsed:Z

    if-eqz v1, :cond_18

    iget v1, p0, mLastChosenPosition:I

    if-ltz v1, :cond_18

    .line 2231
    add-int/lit8 v0, v0, -0x1

    .line 2233
    :cond_18
    return v0
.end method

.method public getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 2245
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayInfoCount()I
    .registers 2

    .prologue
    .line 2241
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 2278
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method protected getDisplayResolveInfoCount()I
    .registers 2

    .prologue
    .line 2273
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .registers 3

    .prologue
    .line 1755
    iget-boolean v0, p0, mFilterLastUsed:Z

    if-eqz v0, :cond_13

    iget v0, p0, mLastChosenPosition:I

    if-ltz v0, :cond_13

    .line 1757
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    iget v1, p0, mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1759
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getFilteredPosition()I
    .registers 2

    .prologue
    .line 1776
    iget-boolean v0, p0, mFilterLastUsed:Z

    if-eqz v0, :cond_b

    iget v0, p0, mLastChosenPosition:I

    if-ltz v0, :cond_b

    .line 1777
    iget v0, p0, mLastChosenPosition:I

    .line 1779
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2249
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, mFilterLastUsed:Z

    if-eqz v0, :cond_16

    iget v0, p0, mLastChosenPosition:I

    if-ltz v0, :cond_16

    iget v0, p0, mLastChosenPosition:I

    if-lt p1, v0, :cond_16

    .line 2250
    add-int/lit8 p1, p1, 0x1

    .line 2252
    :cond_16
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 1668
    invoke-virtual {p0, p1}, getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 2256
    int-to-long v0, p1

    return-wide v0
.end method

.method public getKnoxWorkspace(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1768
    iget-object v0, p0, mKnoxWorkspaceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getKnoxWorkspaceSize()I
    .registers 2

    .prologue
    .line 1771
    iget-object v0, p0, mKnoxWorkspaceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .registers 2

    .prologue
    .line 1763
    iget-object v0, p0, mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .registers 4
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1787
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .registers 2

    .prologue
    .line 2237
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2282
    move-object v0, p2

    .line 2283
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_7

    .line 2284
    invoke-virtual {p0, p3}, createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2286
    :cond_7
    invoke-virtual {p0, p1}, getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 2287
    return-object v0
.end method

.method public handlePackagesChanged()V
    .registers 6

    .prologue
    .line 1729
    invoke-virtual {p0}, getCount()I

    move-result v2

    .line 1731
    .local v2, "oldItemCount":I
    invoke-direct {p0}, rebuildList()V

    .line 1732
    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 1735
    invoke-virtual {p0}, getCount()I

    move-result v1

    .line 1736
    .local v1, "newItemCount":I
    if-eq v2, v1, :cond_19

    .line 1737
    iget-object v3, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p0}, getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity;->updatePagerAdapter(I)V

    .line 1741
    :cond_19
    invoke-virtual {p0}, getCount()I

    move-result v3

    if-nez v3, :cond_24

    .line 1743
    iget-object v3, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1746
    :cond_24
    iget-object v3, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1747
    iget-object v3, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/GridView;

    if-eqz v3, :cond_55

    .line 1748
    iget-object v3, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v3

    invoke-virtual {v3}, getCount()I

    move-result v0

    .line 1749
    .local v0, "itemCount":I
    iget-object v3, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iget-object v4, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1752
    .end local v0    # "itemCount":I
    :cond_55
    return-void
.end method

.method public hasExtendedInfo()Z
    .registers 2

    .prologue
    .line 2260
    iget-boolean v0, p0, mHasExtendedInfo:Z

    return v0
.end method

.method public hasFilteredItem()Z
    .registers 2

    .prologue
    .line 1783
    iget-boolean v0, p0, mFilterLastUsed:Z

    if-eqz v0, :cond_a

    iget v0, p0, mLastChosenPosition:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2264
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 2265
    iget-object v2, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/app/ResolverActivity;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2266
    const/4 v2, 0x1

    .line 2269
    :goto_1c
    return v2

    .line 2264
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2269
    :cond_20
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 2299
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2300
    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090144

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2303
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900dd

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_12
.end method

.method public onListRebuilt()V
    .registers 1

    .prologue
    .line 2105
    return-void
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .registers 4
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 2216
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2217
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2219
    :goto_14
    return-object v0

    :cond_15
    if-eqz p2, :cond_20

    invoke-virtual {p0, p1}, getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_14

    :cond_20
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_1b
.end method

.method public shouldGetResolvedFilter()Z
    .registers 2

    .prologue
    .line 2108
    iget-boolean v0, p0, mFilterLastUsed:Z

    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .registers 3
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 2309
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .registers 4
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 2225
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_6
.end method
