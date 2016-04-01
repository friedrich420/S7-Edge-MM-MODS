.class public abstract Landroid/view/LayoutInflater;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/LayoutInflater$BlinkLayout;,
        Landroid/view/LayoutInflater$FactoryMerger;,
        Landroid/view/LayoutInflater$Factory2;,
        Landroid/view/LayoutInflater$Factory;,
        Landroid/view/LayoutInflater$Filter;
    }
.end annotation


# static fields
.field private static final ATTRS_THEME:[I

.field private static final ATTR_LAYOUT:Ljava/lang/String; = "layout"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_1995:Ljava/lang/String; = "blink"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final TAG_REQUEST_FOCUS:Ljava/lang/String; = "requestFocus"

.field private static final TAG_TAG:Ljava/lang/String; = "tag"

.field static final mConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mFactory:Landroid/view/LayoutInflater$Factory;

.field private mFactory2:Landroid/view/LayoutInflater$Factory2;

.field private mFactorySet:Z

.field private mFilter:Landroid/view/LayoutInflater$Filter;

.field private mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

.field private mTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v3

    sput-object v0, mConstructorSignature:[Ljava/lang/Class;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sConstructorMap:Ljava/util/HashMap;

    .line 114
    new-array v0, v3, [I

    const/high16 v1, 0x1010000

    aput v1, v0, v2

    sput-object v0, ATTRS_THEME:[I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, mConstructorArgs:[Ljava/lang/Object;

    .line 211
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 212
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .registers 4
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, mConstructorArgs:[Ljava/lang/Object;

    .line 223
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 224
    iget-object v0, p1, mFactory:Landroid/view/LayoutInflater$Factory;

    iput-object v0, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    .line 225
    iget-object v0, p1, mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, mFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 226
    iget-object v0, p1, mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 227
    iget-object v0, p1, mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {p0, v0}, setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 228
    return-void
.end method

.method static final consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1039
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1041
    .local v0, "currentDepth":I
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_14

    :cond_11
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1044
    :cond_14
    return-void
.end method

.method private createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 716
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 671
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Class not allowed to be inflated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 236
    .local v0, "LayoutInflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_12

    .line 237
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "LayoutInflater not found."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 239
    :cond_12
    return-object v0
.end method

.method private parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 30
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1a4

    .line 909
    sget-object v2, ATTRS_THEME:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 910
    .local v19, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    .line 911
    .local v20, "themeResId":I
    if-eqz v20, :cond_50

    const/4 v12, 0x1

    .line 912
    .local v12, "hasThemeOverride":Z
    :goto_1b
    if-eqz v12, :cond_28

    .line 913
    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local p2    # "context":Landroid/content/Context;
    .local v14, "context":Landroid/content/Context;
    move-object/from16 p2, v14

    .line 915
    .end local v14    # "context":Landroid/content/Context;
    .restart local p2    # "context":Landroid/content/Context;
    :cond_28
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 919
    const/4 v2, 0x0

    const-string v4, "layout"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v4, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    .line 920
    .local v17, "layout":I
    if-nez v17, :cond_63

    .line 921
    const/4 v2, 0x0

    const-string v4, "layout"

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 922
    .local v22, "value":Ljava/lang/String;
    if-eqz v22, :cond_48

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_52

    .line 923
    :cond_48
    new-instance v2, Landroid/view/InflateException;

    const-string v4, "You must specify a layout in the include tag: <include layout=\"@layout/layoutID\" />"

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 911
    .end local v12    # "hasThemeOverride":Z
    .end local v17    # "layout":I
    .end local v22    # "value":Ljava/lang/String;
    :cond_50
    const/4 v12, 0x0

    goto :goto_1b

    .line 928
    .restart local v12    # "hasThemeOverride":Z
    .restart local v17    # "layout":I
    .restart local v22    # "value":Ljava/lang/String;
    :cond_52
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 932
    .end local v22    # "value":Ljava/lang/String;
    :cond_63
    move-object/from16 v0, p0

    iget-object v2, v0, mTempValue:Landroid/util/TypedValue;

    if-nez v2, :cond_72

    .line 933
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mTempValue:Landroid/util/TypedValue;

    .line 935
    :cond_72
    if-eqz v17, :cond_8d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, mTempValue:Landroid/util/TypedValue;

    const/4 v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, mTempValue:Landroid/util/TypedValue;

    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    .line 939
    :cond_8d
    if-nez v17, :cond_b9

    .line 940
    const/4 v2, 0x0

    const-string v4, "layout"

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 941
    .restart local v22    # "value":Ljava/lang/String;
    new-instance v2, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "You must specify a valid layout reference. The layout ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 944
    .end local v22    # "value":Ljava/lang/String;
    :cond_b9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 947
    .local v3, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_c3
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 949
    .local v6, "childAttrs":Landroid/util/AttributeSet;
    :cond_c7
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v21

    .local v21, "type":I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_d5

    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_c7

    .line 954
    :cond_d5
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_fc

    .line 955
    new-instance v2, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": No start tag found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f7
    .catchall {:try_start_c3 .. :try_end_f7} :catchall_f7

    .line 1022
    .end local v6    # "childAttrs":Landroid/util/AttributeSet;
    .end local v21    # "type":I
    :catchall_f7
    move-exception v2

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2

    .line 959
    .restart local v6    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v21    # "type":I
    :cond_fc
    :try_start_fc
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 961
    .local v9, "childName":Ljava/lang/String;
    const-string/jumbo v2, "merge"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 964
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    :try_end_113
    .catchall {:try_start_fc .. :try_end_113} :catchall_f7

    .line 1022
    :goto_113
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1029
    invoke-static/range {p1 .. p1}, consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1030
    return-void

    :cond_11a
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v10, p2

    move-object v11, v6

    .line 966
    :try_start_121
    invoke-virtual/range {v7 .. v12}, createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v23

    .line 969
    .local v23, "view":Landroid/view/View;
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_13e

    instance-of v2, v3, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_13e

    .line 970
    if-eqz v3, :cond_13e

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13e

    .line 971
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setXmlFilePath(Ljava/lang/CharSequence;)V

    .line 973
    :cond_13e
    move-object/from16 v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v15, v0

    .line 975
    .local v15, "group":Landroid/view/ViewGroup;
    sget-object v2, Lcom/android/internal/R$styleable;->Include:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 977
    .local v13, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 978
    .local v16, "id":I
    const/4 v2, 0x1

    const/4 v4, -0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    .line 979
    .local v24, "visibility":I
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_15c
    .catchall {:try_start_121 .. :try_end_15c} :catchall_f7

    .line 989
    const/16 v18, 0x0

    .line 991
    .local v18, "params":Landroid/view/ViewGroup$LayoutParams;
    :try_start_15e
    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_163
    .catch Ljava/lang/RuntimeException; {:try_start_15e .. :try_end_163} :catch_1ac
    .catchall {:try_start_15e .. :try_end_163} :catchall_f7

    move-result-object v18

    .line 995
    :goto_164
    if-nez v18, :cond_16a

    .line 996
    :try_start_166
    invoke-virtual {v15, v6}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .line 998
    :cond_16a
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1, v6, v2}, rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 1003
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_185

    .line 1004
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1007
    :cond_185
    packed-switch v24, :pswitch_data_1ae

    .line 1019
    :goto_188
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_113

    .line 1009
    :pswitch_18e
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_188

    .line 1012
    :pswitch_195
    const/4 v2, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_188

    .line 1015
    :pswitch_19c
    const/16 v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1a3
    .catchall {:try_start_166 .. :try_end_1a3} :catchall_f7

    goto :goto_188

    .line 1026
    .end local v3    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "childAttrs":Landroid/util/AttributeSet;
    .end local v9    # "childName":Ljava/lang/String;
    .end local v12    # "hasThemeOverride":Z
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "id":I
    .end local v17    # "layout":I
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "ta":Landroid/content/res/TypedArray;
    .end local v20    # "themeResId":I
    .end local v21    # "type":I
    .end local v23    # "view":Landroid/view/View;
    .end local v24    # "visibility":I
    :cond_1a4
    new-instance v2, Landroid/view/InflateException;

    const-string v4, "<include /> can only be used inside of a ViewGroup"

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 992
    .restart local v3    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v9    # "childName":Ljava/lang/String;
    .restart local v12    # "hasThemeOverride":Z
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v15    # "group":Landroid/view/ViewGroup;
    .restart local v16    # "id":I
    .restart local v17    # "layout":I
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "ta":Landroid/content/res/TypedArray;
    .restart local v20    # "themeResId":I
    .restart local v21    # "type":I
    .restart local v23    # "view":Landroid/view/View;
    .restart local v24    # "visibility":I
    :catch_1ac
    move-exception v2

    goto :goto_164

    .line 1007
    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_18e
        :pswitch_195
        :pswitch_19c
    .end packed-switch
.end method

.method private parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V
    .registers 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 879
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 881
    invoke-static {p1}, consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 882
    return-void
.end method

.method private parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 890
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 891
    .local v0, "context":Landroid/content/Context;
    sget-object v4, Lcom/android/internal/R$styleable;->ViewTag:[I

    invoke-virtual {v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 892
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 893
    .local v1, "key":I
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 894
    .local v3, "value":Ljava/lang/CharSequence;
    invoke-virtual {p2, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 895
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 897
    invoke-static {p1}, consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 898
    return-void
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
.end method

.method public final createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 587
    sget-object v11, sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 588
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    const/4 v5, 0x0

    .line 591
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-wide/16 v12, 0x8

    :try_start_b
    invoke-static {v12, v13, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 593
    if-nez v6, :cond_7c

    .line 595
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    if-eqz p2, :cond_7a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2b
    invoke-virtual {v12, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-class v12, Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 598
    iget-object v11, p0, mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v11, :cond_46

    if-eqz v5, :cond_46

    .line 599
    iget-object v11, p0, mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v11, v5}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v2

    .line 600
    .local v2, "allowed":Z
    if-nez v2, :cond_46

    .line 601
    invoke-direct/range {p0 .. p3}, failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 604
    .end local v2    # "allowed":Z
    :cond_46
    sget-object v11, mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 605
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 606
    sget-object v11, sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_55
    :goto_55
    iget-object v4, p0, mConstructorArgs:[Ljava/lang/Object;

    .line 629
    .local v4, "args":[Ljava/lang/Object;
    const/4 v11, 0x1

    aput-object p3, v4, v11

    .line 631
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 632
    .local v9, "view":Landroid/view/View;
    instance-of v11, v9, Landroid/view/ViewStub;

    if-eqz v11, :cond_74

    .line 634
    move-object v0, v9

    check-cast v0, Landroid/view/ViewStub;

    move-object v10, v0

    .line 635
    .local v10, "viewStub":Landroid/view/ViewStub;
    const/4 v11, 0x0

    aget-object v11, v4, v11

    check-cast v11, Landroid/content/Context;

    invoke-virtual {p0, v11}, cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V
    :try_end_74
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_74} :catch_c9
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_74} :catch_11b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_74} :catch_155
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_74} :catch_157
    .catchall {:try_start_b .. :try_end_74} :catchall_103

    .line 663
    .end local v10    # "viewStub":Landroid/view/ViewStub;
    :cond_74
    const-wide/16 v12, 0x8

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v9

    .end local v4    # "args":[Ljava/lang/Object;
    .end local v9    # "view":Landroid/view/View;
    :cond_7a
    move-object v11, p1

    .line 595
    goto :goto_2b

    .line 609
    :cond_7c
    :try_start_7c
    iget-object v11, p0, mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v11, :cond_55

    .line 611
    iget-object v11, p0, mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 612
    .local v3, "allowedState":Ljava/lang/Boolean;
    if-nez v3, :cond_10e

    .line 614
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    if-eqz p2, :cond_10a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_a5
    invoke-virtual {v12, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-class v12, Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 617
    if-eqz v5, :cond_10c

    iget-object v11, p0, mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v11, v5}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_10c

    const/4 v2, 0x1

    .line 618
    .restart local v2    # "allowed":Z
    :goto_ba
    iget-object v11, p0, mFilterMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, p1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    if-nez v2, :cond_55

    .line 620
    invoke-direct/range {p0 .. p3}, failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_c8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7c .. :try_end_c8} :catch_c9
    .catch Ljava/lang/ClassCastException; {:try_start_7c .. :try_end_c8} :catch_11b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7c .. :try_end_c8} :catch_155
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_c8} :catch_157
    .catchall {:try_start_7c .. :try_end_c8} :catchall_103

    goto :goto_55

    .line 639
    .end local v2    # "allowed":Z
    .end local v3    # "allowedState":Ljava/lang/Boolean;
    :catch_c9
    move-exception v7

    .line 640
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    :try_start_ca
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Error inflating class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_f4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_f4
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 643
    .local v8, "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v7}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 644
    throw v8
    :try_end_103
    .catchall {:try_start_ca .. :try_end_103} :catchall_103

    .line 663
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .end local v8    # "ie":Landroid/view/InflateException;
    :catchall_103
    move-exception v11

    const-wide/16 v12, 0x8

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v11

    .restart local v3    # "allowedState":Ljava/lang/Boolean;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_10a
    move-object v11, p1

    .line 614
    goto :goto_a5

    .line 617
    :cond_10c
    const/4 v2, 0x0

    goto :goto_ba

    .line 622
    :cond_10e
    :try_start_10e
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 623
    invoke-direct/range {p0 .. p3}, failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_119
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10e .. :try_end_119} :catch_c9
    .catch Ljava/lang/ClassCastException; {:try_start_10e .. :try_end_119} :catch_11b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10e .. :try_end_119} :catch_155
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_119} :catch_157
    .catchall {:try_start_10e .. :try_end_119} :catchall_103

    goto/16 :goto_55

    .line 646
    .end local v3    # "allowedState":Ljava/lang/Boolean;
    :catch_11b
    move-exception v7

    .line 648
    .local v7, "e":Ljava/lang/ClassCastException;
    :try_start_11c
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Class is not a View "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_146

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_146
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 651
    .restart local v8    # "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v7}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 652
    throw v8

    .line 653
    .end local v7    # "e":Ljava/lang/ClassCastException;
    .end local v8    # "ie":Landroid/view/InflateException;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_155
    move-exception v7

    .line 655
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    throw v7

    .line 656
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :catch_157
    move-exception v7

    .line 657
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Error inflating class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v5, :cond_180

    const-string v11, "<unknown>"

    :goto_171
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 660
    .restart local v8    # "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v7}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 661
    throw v8

    .line 657
    .end local v8    # "ie":Landroid/view/InflateException;
    :cond_180
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_183
    .catchall {:try_start_11c .. :try_end_183} :catchall_103

    move-result-object v11

    goto :goto_171
.end method

.method createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;
    .registers 16
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "ignoreThemeAttr"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 736
    const-string/jumbo v7, "view"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 737
    const-string v7, "class"

    invoke-interface {p4, v9, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 741
    :cond_11
    if-nez p5, :cond_28

    .line 742
    sget-object v7, ATTRS_THEME:[I

    invoke-virtual {p3, p4, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 743
    .local v4, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 744
    .local v5, "themeResId":I
    if-eqz v5, :cond_25

    .line 745
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p3, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local p3    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    move-object p3, v0

    .line 747
    .end local v0    # "context":Landroid/content/Context;
    .restart local p3    # "context":Landroid/content/Context;
    :cond_25
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 750
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    .end local v5    # "themeResId":I
    :cond_28
    const-string v7, "blink"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 752
    new-instance v6, Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {v6, p3, p4}, Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 783
    :cond_35
    :goto_35
    return-object v6

    .line 757
    :cond_36
    :try_start_36
    iget-object v7, p0, mFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v7, :cond_6d

    .line 758
    iget-object v7, p0, mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v7, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v6

    .line 765
    .local v6, "view":Landroid/view/View;
    :goto_40
    if-nez v6, :cond_4c

    iget-object v7, p0, mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-eqz v7, :cond_4c

    .line 766
    iget-object v7, p0, mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v7, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v6

    .line 769
    :cond_4c
    if-nez v6, :cond_35

    .line 770
    iget-object v7, p0, mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v3, v7, v8

    .line 771
    .local v3, "lastContext":Ljava/lang/Object;
    iget-object v7, p0, mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8
    :try_end_58
    .catch Landroid/view/InflateException; {:try_start_36 .. :try_end_58} :catch_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_58} :catch_87
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_58} :catch_ac

    .line 773
    const/4 v7, -0x1

    const/16 v8, 0x2e

    :try_start_5b
    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v7, v8, :cond_7a

    .line 774
    invoke-virtual {p0, p1, p2, p4}, onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_80

    move-result-object v6

    .line 779
    :goto_65
    :try_start_65
    iget-object v7, p0, mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8
    :try_end_6a
    .catch Landroid/view/InflateException; {:try_start_65 .. :try_end_6a} :catch_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_65 .. :try_end_6a} :catch_87
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6a} :catch_ac

    goto :goto_35

    .line 784
    .end local v3    # "lastContext":Ljava/lang/Object;
    .end local v6    # "view":Landroid/view/View;
    :catch_6b
    move-exception v1

    .line 785
    .local v1, "e":Landroid/view/InflateException;
    throw v1

    .line 759
    .end local v1    # "e":Landroid/view/InflateException;
    :cond_6d
    :try_start_6d
    iget-object v7, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    if-eqz v7, :cond_78

    .line 760
    iget-object v7, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v7, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_76
    .catch Landroid/view/InflateException; {:try_start_6d .. :try_end_76} :catch_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6d .. :try_end_76} :catch_87
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_76} :catch_ac

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_40

    .line 762
    .end local v6    # "view":Landroid/view/View;
    :cond_78
    const/4 v6, 0x0

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_40

    .line 776
    .restart local v3    # "lastContext":Ljava/lang/Object;
    :cond_7a
    const/4 v7, 0x0

    :try_start_7b
    invoke-virtual {p0, p2, v7, p4}, createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_80

    move-result-object v6

    goto :goto_65

    .line 779
    :catchall_80
    move-exception v7

    :try_start_81
    iget-object v8, p0, mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    throw v7
    :try_end_87
    .catch Landroid/view/InflateException; {:try_start_81 .. :try_end_87} :catch_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_81 .. :try_end_87} :catch_87
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_87} :catch_ac

    .line 787
    .end local v3    # "lastContext":Ljava/lang/Object;
    .end local v6    # "view":Landroid/view/View;
    :catch_87
    move-exception v1

    .line 788
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Error inflating class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 790
    .local v2, "ie":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 791
    throw v2

    .line 793
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "ie":Landroid/view/InflateException;
    :catch_ac
    move-exception v1

    .line 794
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Error inflating class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 796
    .restart local v2    # "ie":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 797
    throw v2
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getFactory()Landroid/view/LayoutInflater$Factory;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    return-object v0
.end method

.method public final getFactory2()Landroid/view/LayoutInflater$Factory2;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, mFactory2:Landroid/view/LayoutInflater$Factory2;

    return-object v0
.end method

.method public getFilter()Landroid/view/LayoutInflater$Filter;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, mFilter:Landroid/view/LayoutInflater$Filter;

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 380
    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, v0}, inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 7
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 421
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 427
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 429
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_c
    invoke-virtual {p0, v0, p2, p3}, inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    move-result-object v2

    .line 431
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v2

    :catchall_14
    move-exception v2

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 400
    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, v0}, inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, mConstructorArgs:[Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 459
    const-wide/16 v2, 0x8

    :try_start_9
    const-string v4, "inflate"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    .line 462
    .local v5, "inflaterContext":Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 463
    .local v6, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p0

    iget-object v2, v0, mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v10, v2, v3

    check-cast v10, Landroid/content/Context;

    .line 464
    .local v10, "lastContext":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_71

    .line 465
    move-object/from16 v13, p2

    .line 470
    .local v13, "result":Landroid/view/View;
    :cond_28
    :try_start_28
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    .local v15, "type":I
    const/4 v2, 0x2

    if-eq v15, v2, :cond_32

    const/4 v2, 0x1

    if-ne v15, v2, :cond_28

    .line 475
    :cond_32
    const/4 v2, 0x2

    if-eq v15, v2, :cond_74

    .line 476
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": No start tag found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_52} :catch_52
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_52} :catch_8d
    .catchall {:try_start_28 .. :try_end_52} :catchall_60

    .line 546
    .end local v15    # "type":I
    :catch_52
    move-exception v8

    .line 547
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_53
    new-instance v9, Landroid/view/InflateException;

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 548
    .local v9, "ex":Landroid/view/InflateException;
    invoke-virtual {v9, v8}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 549
    throw v9
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_60

    .line 558
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "ex":Landroid/view/InflateException;
    :catchall_60
    move-exception v2

    :try_start_61
    move-object/from16 v0, p0

    iget-object v3, v0, mConstructorArgs:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, mConstructorArgs:[Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v7, 0x0

    aput-object v7, v3, v4

    throw v2

    .line 565
    .end local v5    # "inflaterContext":Landroid/content/Context;
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "lastContext":Landroid/content/Context;
    .end local v13    # "result":Landroid/view/View;
    :catchall_71
    move-exception v2

    monitor-exit v16
    :try_end_73
    .catchall {:try_start_61 .. :try_end_73} :catchall_71

    throw v2

    .line 480
    .restart local v5    # "inflaterContext":Landroid/content/Context;
    .restart local v6    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "lastContext":Landroid/content/Context;
    .restart local v13    # "result":Landroid/view/View;
    .restart local v15    # "type":I
    :cond_74
    :try_start_74
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 489
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v2, "merge"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 490
    if-eqz p2, :cond_85

    if-nez p3, :cond_b6

    .line 491
    :cond_85
    new-instance v2, Landroid/view/InflateException;

    const-string v3, "<merge /> can be used only with a valid ViewGroup root and attachToRoot=true"

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_8d} :catch_52
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8d} :catch_8d
    .catchall {:try_start_74 .. :try_end_8d} :catchall_60

    .line 550
    .end local v11    # "name":Ljava/lang/String;
    .end local v15    # "type":I
    :catch_8d
    move-exception v8

    .line 551
    .local v8, "e":Ljava/lang/Exception;
    :try_start_8e
    new-instance v9, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 554
    .restart local v9    # "ex":Landroid/view/InflateException;
    invoke-virtual {v9, v8}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 555
    throw v9
    :try_end_b6
    .catchall {:try_start_8e .. :try_end_b6} :catchall_60

    .line 495
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "ex":Landroid/view/InflateException;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v15    # "type":I
    :cond_b6
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_bd
    invoke-virtual/range {v2 .. v7}, rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    :try_end_c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bd .. :try_end_c0} :catch_52
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_8d
    .catchall {:try_start_bd .. :try_end_c0} :catchall_60

    .line 558
    :cond_c0
    :goto_c0
    :try_start_c0
    move-object/from16 v0, p0

    iget-object v2, v0, mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 562
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 564
    monitor-exit v16
    :try_end_d5
    .catchall {:try_start_c0 .. :try_end_d5} :catchall_71

    return-object v13

    .line 498
    :cond_d6
    :try_start_d6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v5, v6}, createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v14

    .line 501
    .local v14, "temp":Landroid/view/View;
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_101

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_101

    .line 502
    if-eqz p1, :cond_101

    move-object/from16 v0, p1

    check-cast v0, Landroid/content/res/XmlResourceParser;

    move-object v2, v0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_101

    .line 503
    move-object/from16 v0, p1

    check-cast v0, Landroid/content/res/XmlResourceParser;

    move-object v2, v0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/view/View;->setXmlFilePath(Ljava/lang/CharSequence;)V

    .line 506
    :cond_101
    const/4 v12, 0x0

    .line 508
    .local v12, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p2, :cond_10f

    .line 514
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 515
    if-nez p3, :cond_10f

    .line 518
    invoke-virtual {v14, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    :cond_10f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v6, v2}, rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 535
    if-eqz p2, :cond_120

    if-eqz p3, :cond_120

    .line 536
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_120
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d6 .. :try_end_120} :catch_52
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_120} :catch_8d
    .catchall {:try_start_d6 .. :try_end_120} :catchall_60

    .line 541
    :cond_120
    if-eqz p2, :cond_124

    if-nez p3, :cond_c0

    .line 542
    :cond_124
    move-object v13, v14

    goto :goto_c0
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p0, p2, p3}, onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 689
    const-string v0, "android.view."

    invoke-virtual {p0, p1, v0, p2}, createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .registers 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "finishInflate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 823
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 827
    .local v0, "depth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v7, 0x3

    if-ne v4, v7, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_90

    :cond_12
    if-eq v4, v8, :cond_90

    .line 829
    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    .line 833
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v7, "requestFocus"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 836
    invoke-direct {p0, p1, p2}, parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V

    goto :goto_5

    .line 837
    :cond_28
    const-string/jumbo v7, "tag"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 838
    invoke-direct {p0, p1, p2, p4}, parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_5

    .line 839
    :cond_35
    const-string v7, "include"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 840
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-nez v7, :cond_4b

    .line 841
    new-instance v7, Landroid/view/InflateException;

    const-string v8, "<include /> cannot be the root element"

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 843
    :cond_4b
    invoke-direct {p0, p1, p3, p2, p4}, parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_5

    .line 844
    :cond_4f
    const-string/jumbo v7, "merge"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 845
    new-instance v7, Landroid/view/InflateException;

    const-string v8, "<merge /> must be the root element"

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 847
    :cond_60
    invoke-direct {p0, p2, v2, p3, p4}, createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    .line 849
    .local v5, "view":Landroid/view/View;
    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_81

    instance-of v7, p1, Landroid/content/res/XmlResourceParser;

    if-eqz v7, :cond_81

    .line 850
    if-eqz p1, :cond_81

    move-object v7, p1

    check-cast v7, Landroid/content/res/XmlResourceParser;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_81

    move-object v7, p1

    .line 851
    check-cast v7, Landroid/content/res/XmlResourceParser;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setXmlFilePath(Ljava/lang/CharSequence;)V

    :cond_81
    move-object v6, p2

    .line 853
    check-cast v6, Landroid/view/ViewGroup;

    .line 854
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6, p4}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 855
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, p1, v5, p4, v8}, rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 856
    invoke-virtual {v6, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 860
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    :cond_90
    if-eqz p5, :cond_c1

    .line 861
    if-nez p2, :cond_c2

    .line 862
    const-string v1, ""

    .line 863
    .local v1, "filePath":Ljava/lang/String;
    instance-of v7, p1, Landroid/content/res/XmlResourceParser;

    if-eqz v7, :cond_a9

    move-object v7, p1

    check-cast v7, Landroid/content/res/XmlResourceParser;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a9

    .line 864
    check-cast p1, Landroid/content/res/XmlResourceParser;

    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 866
    :cond_a9
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "When finishInflate, there is no parent. filePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_c1
    :goto_c1
    return-void

    .line 868
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_c2
    invoke-virtual {p2}, Landroid/view/View;->onFinishInflate()V

    goto :goto_c1
.end method

.method final rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "finishInflate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 811
    return-void
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .registers 6
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;

    .prologue
    .line 300
    iget-boolean v0, p0, mFactorySet:Z

    if-eqz v0, :cond_c

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_c
    if-nez p1, :cond_16

    .line 304
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, mFactorySet:Z

    .line 307
    iget-object v0, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_20

    .line 308
    iput-object p1, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    .line 312
    :goto_1f
    return-void

    .line 310
    :cond_20
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    const/4 v1, 0x0

    iget-object v2, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v3, p0, mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_1f
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .registers 5
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    .line 319
    iget-boolean v0, p0, mFactorySet:Z

    if-eqz v0, :cond_c

    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_c
    if-nez p1, :cond_16

    .line 323
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, mFactorySet:Z

    .line 326
    iget-object v0, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_22

    .line 327
    iput-object p1, p0, mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object p1, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    .line 331
    :goto_21
    return-void

    .line 329
    :cond_22
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v2, p0, mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_21
.end method

.method public setFilter(Landroid/view/LayoutInflater$Filter;)V
    .registers 3
    .param p1, "filter"    # Landroid/view/LayoutInflater$Filter;

    .prologue
    .line 362
    iput-object p1, p0, mFilter:Landroid/view/LayoutInflater$Filter;

    .line 363
    if-eqz p1, :cond_b

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mFilterMap:Ljava/util/HashMap;

    .line 366
    :cond_b
    return-void
.end method

.method public setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V
    .registers 5
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    .line 337
    iget-object v0, p0, mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-nez v0, :cond_7

    .line 338
    iput-object p1, p0, mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 342
    :goto_6
    return-void

    .line 340
    :cond_7
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iget-object v2, p0, mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    goto :goto_6
.end method
