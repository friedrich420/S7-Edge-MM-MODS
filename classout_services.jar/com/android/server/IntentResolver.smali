.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z

.field private static final localVerificationLOGV:Z

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 793
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mFilters:Landroid/util/ArraySet;

    .line 810
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mTypeToFilter:Landroid/util/ArrayMap;

    .line 817
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 826
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 831
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mSchemeToFilter:Landroid/util/ArrayMap;

    .line 837
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mActionToFilter:Landroid/util/ArrayMap;

    .line 842
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 10
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v5, 0x0

    .line 537
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 538
    .local v1, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-nez v1, :cond_14

    .line 539
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 540
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    aput-object p3, v1, v5

    .line 557
    :goto_13
    return-void

    .line 543
    :cond_14
    array-length v0, v1

    .line 544
    .local v0, "N":I
    move v2, v0

    .line 545
    .local v2, "i":I
    :goto_16
    if-lez v2, :cond_21

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    if-nez v4, :cond_21

    .line 546
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 548
    :cond_21
    if-ge v2, v0, :cond_26

    .line 549
    aput-object p3, v1, v2

    goto :goto_13

    .line 551
    :cond_26
    mul-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, newArray(I)[Landroid/content/IntentFilter;

    move-result-object v3

    .line 552
    .local v3, "newa":[Landroid/content/IntentFilter;, "[TF;"
    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    aput-object p3, v3, v0

    .line 554
    invoke-virtual {p1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13
.end method

.method private buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V
    .registers 32
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "debug"    # Z
    .param p4, "defaultOnly"    # Z
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "scheme"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List",
            "<TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p2, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p7, "src":[Landroid/content/IntentFilter;, "[TF;"
    .local p8, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 693
    .local v7, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v19

    .line 695
    .local v19, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v12

    .line 699
    .local v12, "excludingStopped":Z
    if-eqz p3, :cond_61

    .line 700
    new-instance v16, Landroid/util/LogPrinter;

    const/4 v5, 0x2

    const-string v6, "IntentResolver"

    const/4 v8, 0x3

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6, v8}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 701
    .local v16, "logPrinter":Landroid/util/Printer;
    new-instance v15, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    .line 707
    .local v15, "logPrintWriter":Ljava/io/PrintWriter;
    :goto_22
    if-eqz p7, :cond_65

    move-object/from16 v0, p7

    array-length v10, v0

    .line 708
    .local v10, "N":I
    :goto_27
    const/4 v13, 0x0

    .line 711
    .local v13, "hasNonDefaults":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_29
    if-ge v14, v10, :cond_1a3

    aget-object v3, p7, v14

    .local v3, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v3, :cond_1a3

    .line 713
    if-eqz p3, :cond_49

    const-string v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Matching against filter "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_49
    if-eqz v12, :cond_67

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v3, v1}, isFilterStopped(Landroid/content/IntentFilter;I)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 716
    if-eqz p3, :cond_5e

    .line 717
    const-string v5, "IntentResolver"

    const-string v6, "  Filter\'s target is stopped; skipping"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_5e
    :goto_5e
    add-int/lit8 v14, v14, 0x1

    goto :goto_29

    .line 703
    .end local v3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v10    # "N":I
    .end local v13    # "hasNonDefaults":Z
    .end local v14    # "i":I
    .end local v15    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v16    # "logPrinter":Landroid/util/Printer;
    :cond_61
    const/16 v16, 0x0

    .line 704
    .restart local v16    # "logPrinter":Landroid/util/Printer;
    const/4 v15, 0x0

    .restart local v15    # "logPrintWriter":Ljava/io/PrintWriter;
    goto :goto_22

    .line 707
    :cond_65
    const/4 v10, 0x0

    goto :goto_27

    .line 723
    .restart local v3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v10    # "N":I
    .restart local v13    # "hasNonDefaults":Z
    .restart local v14    # "i":I
    :cond_67
    if-eqz v19, :cond_96

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v5

    if-nez v5, :cond_96

    .line 724
    if-eqz p3, :cond_5e

    .line 725
    const-string v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Filter is not from package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "; skipping"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 731
    :cond_96
    invoke-virtual {v3}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 732
    if-eqz p3, :cond_eb

    .line 733
    const-string v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Filter verified: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, isFilterVerified(Landroid/content/IntentFilter;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v11

    .line 735
    .local v11, "authorities":I
    const/16 v21, 0x0

    .local v21, "z":I
    :goto_c2
    move/from16 v0, v21

    if-ge v0, v11, :cond_eb

    .line 736
    const-string v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    add-int/lit8 v21, v21, 0x1

    goto :goto_c2

    .line 742
    .end local v11    # "authorities":I
    .end local v21    # "z":I
    :cond_eb
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v3, v1}, allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_100

    .line 743
    if-eqz p3, :cond_5e

    .line 744
    const-string v5, "IntentResolver"

    const-string v6, "  Filter\'s target already added"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 749
    :cond_100
    const-string v9, "IntentResolver"

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v17

    .line 750
    .local v17, "match":I
    if-ltz v17, :cond_171

    .line 751
    if-eqz p3, :cond_13c

    const-string v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Filter matched!  match=0x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " hasDefault="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_13c
    if-eqz p4, :cond_146

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16e

    .line 755
    :cond_146
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p9

    invoke-virtual {v0, v3, v1, v2}, newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v18

    .line 756
    .local v18, "oneResult":Ljava/lang/Object;, "TR;"
    if-eqz v18, :cond_5e

    .line 757
    move-object/from16 v0, p8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    if-eqz p3, :cond_5e

    .line 759
    const-string v5, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v5, v3}, dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 760
    invoke-virtual {v15}, Ljava/io/PrintWriter;->flush()V

    .line 761
    const-string v5, "    "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v5}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 765
    .end local v18    # "oneResult":Ljava/lang/Object;, "TR;"
    :cond_16e
    const/4 v13, 0x1

    goto/16 :goto_5e

    .line 768
    :cond_171
    if-eqz p3, :cond_5e

    .line 770
    packed-switch v17, :pswitch_data_1c4

    .line 775
    const-string/jumbo v20, "unknown reason"

    .line 777
    .local v20, "reason":Ljava/lang/String;
    :goto_179
    const-string v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Filter did not match: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 771
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_195
    const-string v20, "action"

    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_179

    .line 772
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_198
    const-string v20, "category"

    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_179

    .line 773
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_19b
    const-string/jumbo v20, "data"

    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_179

    .line 774
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_19f
    const-string/jumbo v20, "type"

    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_179

    .line 782
    .end local v3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v17    # "match":I
    .end local v20    # "reason":Ljava/lang/String;
    :cond_1a3
    if-eqz v13, :cond_1b3

    .line 783
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1b4

    .line 784
    const-string v5, "IntentResolver"

    const-string/jumbo v6, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_1b3
    :goto_1b3
    return-void

    .line 785
    :cond_1b4
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1b3

    .line 786
    const-string v5, "IntentResolver"

    const-string/jumbo v6, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b3

    .line 770
    :pswitch_data_1c4
    .packed-switch -0x4
        :pswitch_198
        :pswitch_195
        :pswitch_19b
        :pswitch_19f
    .end packed-switch
.end method

.method private collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 7
    .param p2, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "array":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v2, 0x0

    .line 149
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    if-eqz p1, :cond_b

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_b

    .line 151
    aget-object v0, p1, v1

    .line 152
    .local v0, "cur":Landroid/content/IntentFilter;, "TF;"
    if-nez v0, :cond_c

    .line 163
    .end local v0    # "cur":Landroid/content/IntentFilter;, "TF;"
    .end local v1    # "i":I
    :cond_b
    return-object v2

    .line 155
    .restart local v0    # "cur":Landroid/content/IntentFilter;, "TF;"
    .restart local v1    # "i":I
    :cond_c
    invoke-direct {p0, v0, p2}, filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 156
    if-nez v2, :cond_19

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .restart local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    :cond_19
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .registers 8
    .param p1, "f1"    # Landroid/content/IntentFilter;
    .param p2, "f2"    # Landroid/content/IntentFilter;

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 75
    .local v1, "s1":I
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    .line 76
    .local v2, "s2":I
    if-eq v1, v2, :cond_c

    .line 144
    :cond_b
    :goto_b
    return v3

    .line 79
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_1c

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 84
    :cond_1c
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    .line 85
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    .line 86
    if-ne v1, v2, :cond_b

    .line 89
    const/4 v0, 0x0

    :goto_27
    if-ge v0, v1, :cond_36

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 94
    :cond_36
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    .line 95
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v2

    .line 96
    if-ne v1, v2, :cond_b

    .line 99
    const/4 v0, 0x0

    :goto_41
    if-ge v0, v1, :cond_50

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 104
    :cond_50
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    .line 105
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    .line 106
    if-ne v1, v2, :cond_b

    .line 109
    const/4 v0, 0x0

    :goto_5b
    if-ge v0, v1, :cond_6a

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 114
    :cond_6a
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 115
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    .line 116
    if-ne v1, v2, :cond_b

    .line 119
    const/4 v0, 0x0

    :goto_75
    if-ge v0, v1, :cond_84

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 124
    :cond_84
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    .line 125
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v2

    .line 126
    if-ne v1, v2, :cond_b

    .line 129
    const/4 v0, 0x0

    :goto_8f
    if-ge v0, v1, :cond_9e

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 134
    :cond_9e
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v1

    .line 135
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v2

    .line 136
    if-ne v1, v2, :cond_b

    .line 139
    const/4 v0, 0x0

    :goto_a9
    if-ge v0, v1, :cond_b8

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 144
    :cond_b8
    const/4 v3, 0x1

    goto/16 :goto_b
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 682
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_8

    .line 683
    const/4 v1, 0x0

    .line 685
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Landroid/util/FastImmutableArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    goto :goto_7
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 8
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_4

    .line 623
    const/4 v1, 0x0

    .line 633
    :cond_3
    return v1

    .line 626
    :cond_4
    const/4 v1, 0x0

    .line 627
    .local v1, "num":I
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 628
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 629
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 631
    invoke-direct {p0, p3, v0, p1}, addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_5
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 11
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v5, 0x0

    .line 560
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 561
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_9

    move v3, v5

    .line 587
    :cond_8
    return v3

    .line 565
    :cond_9
    const/4 v3, 0x0

    .line 566
    .local v3, "num":I
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 567
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 568
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 570
    move-object v0, v2

    .line 571
    .local v0, "baseName":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 572
    .local v4, "slashpos":I
    if-lez v4, :cond_36

    .line 573
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 578
    :goto_29
    iget-object v6, p0, mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v2, p1}, addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 580
    if-lez v4, :cond_4a

    .line 581
    iget-object v6, p0, mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v0, p1}, addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_a

    .line 575
    :cond_36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    .line 583
    :cond_4a
    iget-object v6, p0, mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v0, p1}, addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_a
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    const/4 v6, 0x0

    .line 654
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 655
    .local v1, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v1, :cond_32

    .line 656
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    .line 657
    .local v0, "LAST":I
    :goto_c
    if-ltz v0, :cond_15

    aget-object v5, v1, v0

    if-nez v5, :cond_15

    .line 658
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 660
    :cond_15
    move v2, v0

    .local v2, "idx":I
    :goto_16
    if-ltz v2, :cond_2d

    .line 661
    aget-object v5, v1, v2

    if-ne v5, p3, :cond_2a

    .line 662
    sub-int v4, v0, v2

    .line 663
    .local v4, "remain":I
    if-lez v4, :cond_25

    .line 664
    add-int/lit8 v5, v2, 0x1

    invoke-static {v1, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    :cond_25
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 667
    add-int/lit8 v0, v0, -0x1

    .line 660
    .end local v4    # "remain":I
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 670
    :cond_2d
    if-gez v0, :cond_33

    .line 671
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .end local v0    # "LAST":I
    .end local v2    # "idx":I
    :cond_32
    :goto_32
    return-void

    .line 672
    .restart local v0    # "LAST":I
    .restart local v2    # "idx":I
    :cond_33
    array-length v5, v1

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_32

    .line 673
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v5}, newArray(I)[Landroid/content/IntentFilter;

    move-result-object v3

    .line 674
    .local v3, "newa":[Landroid/content/IntentFilter;, "[TF;"
    add-int/lit8 v5, v0, 0x1

    invoke-static {v1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    invoke-virtual {p1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 8
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_4

    .line 639
    const/4 v1, 0x0

    .line 649
    :cond_3
    return v1

    .line 642
    :cond_4
    const/4 v1, 0x0

    .line 643
    .local v1, "num":I
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 644
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 645
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 647
    invoke-direct {p0, p3, v0, p1}, remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 11
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v5, 0x0

    .line 591
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 592
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_9

    move v3, v5

    .line 617
    :cond_8
    return v3

    .line 596
    :cond_9
    const/4 v3, 0x0

    .line 597
    .local v3, "num":I
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 598
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 599
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 601
    move-object v0, v2

    .line 602
    .local v0, "baseName":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 603
    .local v4, "slashpos":I
    if-lez v4, :cond_36

    .line 604
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 609
    :goto_29
    iget-object v6, p0, mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v2, p1}, remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    if-lez v4, :cond_4a

    .line 612
    iget-object v6, p0, mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v0, p1}, remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    .line 606
    :cond_36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    .line 614
    :cond_4a
    iget-object v6, p0, mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v0, p1}, remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    iget-object v2, p0, mFilters:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "numS":I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 63
    .local v1, "numT":I
    if-nez v0, :cond_26

    if-nez v1, :cond_26

    .line 64
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 67
    :cond_26
    if-eqz v1, :cond_33

    .line 68
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 71
    :cond_33
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List",
            "<TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 17
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "printFilter"    # Z
    .param p6, "collapseDuplicates"    # Z

    .prologue
    .line 284
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "innerPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, "sepPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "curPrefix":Ljava/lang/String;
    const-string v3, "Full MIME Types:"

    iget-object v5, p0, mTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 289
    move-object v2, v9

    .line 291
    :cond_4e
    const-string v3, "Base MIME Types:"

    iget-object v5, p0, mBaseTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 293
    move-object v2, v9

    .line 295
    :cond_5f
    const-string v3, "Wild MIME Types:"

    iget-object v5, p0, mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 297
    move-object v2, v9

    .line 299
    :cond_70
    const-string v3, "Schemes:"

    iget-object v5, p0, mSchemeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 301
    move-object v2, v9

    .line 303
    :cond_81
    const-string v3, "Non-Data Actions:"

    iget-object v5, p0, mActionToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 305
    move-object v2, v9

    .line 307
    :cond_92
    const-string v3, "MIME Typed Actions:"

    iget-object v5, p0, mTypedActionToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 309
    move-object v2, v9

    .line 311
    :cond_a3
    if-ne v2, v9, :cond_a7

    const/4 v0, 0x1

    :goto_a6
    return v0

    :cond_a7
    const/4 v0, 0x0

    goto :goto_a6
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 6
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .prologue
    .line 533
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 534
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .registers 28
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "titlePrefix"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "printFilter"    # Z
    .param p8, "collapseDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "eprefix":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "    "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "fprefix":Ljava/lang/String;
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 222
    .local v8, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    const/4 v15, 0x0

    .line 223
    .local v15, "printedSomething":Z
    const/16 v16, 0x0

    .line 224
    .local v16, "printer":Landroid/util/Printer;
    const/4 v13, 0x0

    .local v13, "mapi":I
    :goto_37
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v13, v0, :cond_162

    .line 225
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/IntentFilter;

    .line 226
    .local v5, "a":[Landroid/content/IntentFilter;, "[TF;"
    array-length v4, v5

    .line 227
    .local v4, "N":I
    const/4 v14, 0x0

    .line 229
    .local v14, "printedHeader":Z
    if-eqz p8, :cond_e8

    .line 230
    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 231
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4f
    if-ge v10, v4, :cond_92

    aget-object v7, v5, v10

    .local v7, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v7, :cond_92

    .line 232
    if-eqz p6, :cond_64

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v7}, isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v17

    if-nez v17, :cond_64

    .line 231
    :goto_61
    add-int/lit8 v10, v10, 0x1

    goto :goto_4f

    .line 235
    :cond_64
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;

    move-result-object v12

    .line 236
    .local v12, "label":Ljava/lang/Object;
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v11

    .line 237
    .local v11, "index":I
    if-gez v11, :cond_7d

    .line 238
    new-instance v17, Landroid/util/MutableInt;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/util/MutableInt;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 240
    :cond_7d
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/MutableInt;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/MutableInt;->value:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/util/MutableInt;->value:I

    goto :goto_61

    .line 243
    .end local v7    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v11    # "index":I
    .end local v12    # "label":Ljava/lang/Object;
    :cond_92
    const/4 v10, 0x0

    :goto_93
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_15e

    .line 244
    if-eqz p3, :cond_a9

    .line 245
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    const/16 p3, 0x0

    .line 248
    :cond_a9
    if-nez v14, :cond_c9

    .line 249
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const/4 v14, 0x1

    .line 252
    :cond_c9
    const/4 v15, 0x1

    .line 253
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/MutableInt;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/MutableInt;->value:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v9, v2, v3}, dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 243
    add-int/lit8 v10, v10, 0x1

    goto :goto_93

    .line 256
    .end local v10    # "i":I
    :cond_e8
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_e9
    if-ge v10, v4, :cond_15e

    aget-object v7, v5, v10

    .restart local v7    # "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v7, :cond_15e

    .line 257
    if-eqz p6, :cond_fe

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v7}, isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v17

    if-nez v17, :cond_fe

    .line 256
    :cond_fb
    :goto_fb
    add-int/lit8 v10, v10, 0x1

    goto :goto_e9

    .line 260
    :cond_fe
    if-eqz p3, :cond_10c

    .line 261
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    const/16 p3, 0x0

    .line 264
    :cond_10c
    if-nez v14, :cond_12c

    .line 265
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const/4 v14, 0x1

    .line 268
    :cond_12c
    const/4 v15, 0x1

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v7}, dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 270
    if-eqz p7, :cond_fb

    .line 271
    if-nez v16, :cond_141

    .line 272
    new-instance v16, Landroid/util/PrintWriterPrinter;

    .end local v16    # "printer":Landroid/util/Printer;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 274
    .restart local v16    # "printer":Landroid/util/Printer;
    :cond_141
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_fb

    .line 224
    .end local v7    # "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_15e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_37

    .line 279
    .end local v4    # "N":I
    .end local v5    # "a":[Landroid/content/IntentFilter;, "[TF;"
    .end local v10    # "i":I
    .end local v14    # "printedHeader":Z
    :cond_162
    return v15
.end method

.method public filterIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    iget-object v0, p0, mFilters:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const-string v0, "IntentFilter"

    return-object v0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    if-ne v3, v5, :cond_19

    .line 169
    iget-object v3, p0, mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    invoke-direct {p0, v3, p1}, collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v2

    .line 187
    :cond_18
    :goto_18
    return-object v2

    .line 170
    :cond_19
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    if-ne v3, v5, :cond_36

    .line 172
    iget-object v3, p0, mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    invoke-direct {p0, v3, p1}, collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_18

    .line 173
    :cond_36
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-nez v3, :cond_59

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    if-nez v3, :cond_59

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    if-ne v3, v5, :cond_59

    .line 176
    iget-object v3, p0, mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    invoke-direct {p0, v3, p1}, collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_18

    .line 178
    :cond_59
    const/4 v2, 0x0

    .line 179
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    iget-object v3, p0, mFilters:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_60
    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 180
    .local v0, "cur":Landroid/content/IntentFilter;, "TF;"
    invoke-direct {p0, v0, p1}, filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 181
    if-nez v2, :cond_79

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .restart local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    :cond_79
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_60
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isFilterVerified(Landroid/content/IntentFilter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->isVerified()Z

    move-result v0

    return v0
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4
    .param p2, "match"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 45
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, "scheme":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v10, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_203

    const/4 v5, 0x1

    .line 380
    .local v5, "debug":Z
    :goto_12
    if-eqz v5, :cond_5c

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolving type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " scheme="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " defaultOnly="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " userId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_5c
    const/4 v9, 0x0

    .line 385
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v18, 0x0

    .line 386
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v26, 0x0

    .line 387
    .local v26, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v34, 0x0

    .line 391
    .local v34, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz p2, :cond_114

    .line 392
    const/16 v2, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v39

    .line 393
    .local v39, "slashpos":I
    if-lez v39, :cond_114

    .line 394
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 395
    .local v37, "baseType":Ljava/lang/String;
    const-string v2, "*"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25c

    .line 396
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v39, 0x2

    if-ne v2, v3, :cond_96

    add-int/lit8 v2, v39, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_206

    .line 400
    :cond_96
    move-object/from16 v0, p0

    iget-object v2, v0, mTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 401
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_c0

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_c0
    move-object/from16 v0, p0

    iget-object v2, v0, mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    .line 403
    .restart local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_ea

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_ea
    :goto_ea
    move-object/from16 v0, p0

    iget-object v2, v0, mWildTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v26, [Landroid/content/IntentFilter;

    .line 416
    .restart local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_114

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Third type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v37    # "baseType":Ljava/lang/String;
    .end local v39    # "slashpos":I
    :cond_114
    :goto_114
    if-eqz v8, :cond_13e

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v34, [Landroid/content/IntentFilter;

    .line 432
    .restart local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_13e

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheme list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_13e
    if-nez p2, :cond_174

    if-nez v8, :cond_174

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_174

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 440
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_174

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_174
    invoke-static/range {p1 .. p1}, getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v4

    .line 444
    .local v4, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    if-eqz v9, :cond_187

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v11, p4

    .line 445
    invoke-direct/range {v2 .. v11}, buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 448
    :cond_187
    if-eqz v18, :cond_19c

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v4

    move v14, v5

    move/from16 v15, p3

    move-object/from16 v16, p2

    move-object/from16 v17, v8

    move-object/from16 v19, v10

    move/from16 v20, p4

    .line 449
    invoke-direct/range {v11 .. v20}, buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 452
    :cond_19c
    if-eqz v26, :cond_1b3

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, p3

    move-object/from16 v24, p2

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v28, p4

    .line 453
    invoke-direct/range {v19 .. v28}, buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 456
    :cond_1b3
    if-eqz v34, :cond_1ca

    move-object/from16 v27, p0

    move-object/from16 v28, p1

    move-object/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, p3

    move-object/from16 v32, p2

    move-object/from16 v33, v8

    move-object/from16 v35, v10

    move/from16 v36, p4

    .line 457
    invoke-direct/range {v27 .. v36}, buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 460
    :cond_1ca
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, sortResults(Ljava/util/List;)V

    .line 462
    if-eqz v5, :cond_290

    .line 463
    const-string v2, "IntentResolver"

    const-string v3, "Final result list:"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_1da
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v38

    if-ge v0, v2, :cond_290

    .line 465
    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    add-int/lit8 v38, v38, 0x1

    goto :goto_1da

    .line 377
    .end local v4    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v5    # "debug":Z
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v38    # "i":I
    :cond_203
    const/4 v5, 0x0

    goto/16 :goto_12

    .line 407
    .restart local v5    # "debug":Z
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v37    # "baseType":Ljava/lang/String;
    .restart local v39    # "slashpos":I
    :cond_206
    move-object/from16 v0, p0

    iget-object v2, v0, mBaseTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 408
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_230

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_230
    move-object/from16 v0, p0

    iget-object v2, v0, mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    .line 410
    .restart local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_ea

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ea

    .line 417
    :cond_25c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_114

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 422
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_114

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Typed Action list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_114

    .line 468
    .end local v37    # "baseType":Ljava/lang/String;
    .end local v39    # "slashpos":I
    .restart local v4    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    :cond_290
    return-object v10
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<[TF;>;I)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[TF;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v9, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_32

    const/4 v4, 0x1

    .line 360
    .local v4, "debug":Z
    :goto_e
    invoke-static {p1}, getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v3

    .line 361
    .local v3, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 363
    .local v11, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1b
    if-ge v12, v11, :cond_34

    .line 364
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/IntentFilter;

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-object v6, p2

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 363
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    .line 357
    .end local v3    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v4    # "debug":Z
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v11    # "N":I
    .end local v12    # "i":I
    :cond_32
    const/4 v4, 0x0

    goto :goto_e

    .line 367
    .restart local v3    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .restart local v4    # "debug":Z
    .restart local v7    # "scheme":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v12    # "i":I
    :cond_34
    invoke-virtual {p0, v9}, sortResults(Ljava/util/List;)V

    .line 368
    return-object v9
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p0, p1}, removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 193
    iget-object v0, p0, mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "numS":I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 206
    .local v1, "numT":I
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 207
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 210
    :cond_21
    if-eqz v1, :cond_2e

    .line 211
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 214
    :cond_2e
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    sget-object v0, mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 522
    return-void
.end method
