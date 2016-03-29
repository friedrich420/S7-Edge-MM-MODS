.class Lcom/android/settings/applock/PackageInfoUtil$1;
.super Ljava/lang/Object;
.source "PackageInfoUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applock/PackageInfoUtil;->sortList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/applock/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applock/PackageInfoUtil;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings/applock/PackageInfoUtil;Ljava/text/Collator;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/applock/PackageInfoUtil$1;->this$0:Lcom/android/settings/applock/PackageInfoUtil;

    iput-object p2, p0, Lcom/android/settings/applock/PackageInfoUtil$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applock/AppInfo;Lcom/android/settings/applock/AppInfo;)I
    .locals 7
    .param p1, "lhs"    # Lcom/android/settings/applock/AppInfo;
    .param p2, "rhs"    # Lcom/android/settings/applock/AppInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "result":I
    iget v4, p1, Lcom/android/settings/applock/AppInfo;->locked:I

    iget v5, p2, Lcom/android/settings/applock/AppInfo;->locked:I

    sub-int v1, v4, v5

    .line 110
    .local v1, "ret":I
    if-eqz v1, :cond_2

    .line 112
    if-lez v1, :cond_1

    move v0, v2

    .line 120
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    .line 112
    goto :goto_0

    .line 115
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applock/PackageInfoUtil$1;->val$collator:Ljava/text/Collator;

    iget-object v5, p1, Lcom/android/settings/applock/AppInfo;->appName:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/settings/applock/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 116
    if-eqz v1, :cond_0

    .line 117
    if-lez v1, :cond_3

    move v0, v3

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Lcom/android/settings/applock/AppInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/applock/AppInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applock/PackageInfoUtil$1;->compare(Lcom/android/settings/applock/AppInfo;Lcom/android/settings/applock/AppInfo;)I

    move-result v0

    return v0
.end method
