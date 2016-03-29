.class public Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResult"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public category_id:I

.field public className:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public entries:Ljava/lang/String;

.field public iconResId:I

.field public key:Ljava/lang/String;

.field public menu_path:Ljava/lang/String;

.field public menu_type:I

.field public screenTitle:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public targetCls:Ljava/lang/String;

.field public targetPkg:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summaryOn"    # Ljava/lang/String;
    .param p4, "summaryOff"    # Ljava/lang/String;
    .param p5, "entries"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "key"    # Ljava/lang/String;
    .param p8, "targetPkg"    # Ljava/lang/String;
    .param p9, "targetCls"    # Ljava/lang/String;
    .param p10, "screenTitle"    # Ljava/lang/String;
    .param p11, "className"    # Ljava/lang/String;
    .param p12, "menu_type"    # I
    .param p13, "menu_path"    # Ljava/lang/String;
    .param p14, "category_id"    # I
    .param p15, "action"    # Ljava/lang/String;

    .prologue
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    .line 795
    iput-object p2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    .line 796
    iput-object p3, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    .line 797
    iput-object p4, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->summaryOff:Ljava/lang/String;

    .line 798
    iput-object p5, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->entries:Ljava/lang/String;

    .line 799
    iput p6, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    .line 800
    iput-object p7, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    .line 802
    iput-object p8, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->targetPkg:Ljava/lang/String;

    .line 803
    iput-object p9, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->targetCls:Ljava/lang/String;

    .line 804
    iput-object p10, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->screenTitle:Ljava/lang/String;

    .line 805
    iput-object p11, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->className:Ljava/lang/String;

    .line 806
    iput p12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_type:I

    .line 807
    iput-object p13, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    .line 808
    iput p14, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->category_id:I

    .line 809
    iput-object p15, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->action:Ljava/lang/String;

    .line 810
    return-void
.end method
