.class public Landroid/widget/SimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ThemedSpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleAdapter$1;,
        Landroid/widget/SimpleAdapter$SimpleFilter;,
        Landroid/widget/SimpleAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mDropDownInflater:Landroid/view/LayoutInflater;

.field private mDropDownResource:I

.field private mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

.field private mFrom:[Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTo:[I

.field private mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    iput-object p2, p0, mData:Ljava/util/List;

    .line 90
    iput p3, p0, mDropDownResource:I

    iput p3, p0, mResource:I

    .line 91
    iput-object p4, p0, mFrom:[Ljava/lang/String;

    .line 92
    iput-object p5, p0, mTo:[I

    .line 93
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    .line 94
    return-void
.end method

.method static synthetic access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;

    .prologue
    .line 54
    iget-object v0, p0, mUnfilteredData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 54
    iput-object p1, p0, mUnfilteredData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/SimpleAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;

    .prologue
    .line 54
    iget-object v0, p0, mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 54
    iput-object p1, p0, mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/SimpleAdapter;)[I
    .registers 2
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;

    .prologue
    .line 54
    iget-object v0, p0, mTo:[I

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;

    .prologue
    .line 54
    iget-object v0, p0, mFrom:[Ljava/lang/String;

    return-object v0
.end method

.method private bindView(ILandroid/view/View;)V
    .registers 16
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v10, p0, mData:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 184
    .local v4, "dataSet":Ljava/util/Map;
    if-nez v4, :cond_b

    .line 237
    :cond_a
    return-void

    .line 188
    :cond_b
    iget-object v0, p0, mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 189
    .local v0, "binder":Landroid/widget/SimpleAdapter$ViewBinder;
    iget-object v5, p0, mFrom:[Ljava/lang/String;

    .line 190
    .local v5, "from":[Ljava/lang/String;
    iget-object v8, p0, mTo:[I

    .line 191
    .local v8, "to":[I
    array-length v2, v8

    .line 193
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    if-ge v6, v2, :cond_a

    .line 194
    aget v10, v8, v6

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 195
    .local v9, "v":Landroid/view/View;
    if-eqz v9, :cond_47

    .line 196
    aget-object v10, v5, v6

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 197
    .local v3, "data":Ljava/lang/Object;
    if-nez v3, :cond_4a

    const-string v7, ""

    .line 198
    .local v7, "text":Ljava/lang/String;
    :goto_27
    if-nez v7, :cond_2b

    .line 199
    const-string v7, ""

    .line 202
    :cond_2b
    const/4 v1, 0x0

    .line 203
    .local v1, "bound":Z
    if-eqz v0, :cond_32

    .line 204
    invoke-interface {v0, v9, v3, v7}, Landroid/widget/SimpleAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    .line 207
    :cond_32
    if-nez v1, :cond_47

    .line 208
    instance-of v10, v9, Landroid/widget/Checkable;

    if-eqz v10, :cond_87

    .line 209
    instance-of v10, v3, Ljava/lang/Boolean;

    if-eqz v10, :cond_4f

    .line 210
    check-cast v9, Landroid/widget/Checkable;

    .end local v9    # "v":Landroid/view/View;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "data":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 193
    .end local v1    # "bound":Z
    .end local v7    # "text":Ljava/lang/String;
    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 197
    .restart local v3    # "data":Ljava/lang/Object;
    .restart local v9    # "v":Landroid/view/View;
    :cond_4a
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_27

    .line 211
    .restart local v1    # "bound":Z
    .restart local v7    # "text":Ljava/lang/String;
    :cond_4f
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_59

    .line 214
    check-cast v9, Landroid/widget/TextView;

    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_47

    .line 216
    .restart local v9    # "v":Landroid/view/View;
    :cond_59
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " should be bound to a Boolean, not a "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v3, :cond_82

    const-string v10, "<unknown type>"

    :goto_76
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_82
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    goto :goto_76

    .line 220
    :cond_87
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_91

    .line 223
    check-cast v9, Landroid/widget/TextView;

    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_47

    .line 224
    .restart local v9    # "v":Landroid/view/View;
    :cond_91
    instance-of v10, v9, Landroid/widget/ImageView;

    if-eqz v10, :cond_ab

    .line 225
    instance-of v10, v3, Ljava/lang/Integer;

    if-eqz v10, :cond_a5

    .line 226
    check-cast v9, Landroid/widget/ImageView;

    .end local v9    # "v":Landroid/view/View;
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "data":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v9, v10}, setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_47

    .line 228
    .restart local v3    # "data":Ljava/lang/Object;
    .restart local v9    # "v":Landroid/view/View;
    :cond_a5
    check-cast v9, Landroid/widget/ImageView;

    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_47

    .line 231
    .restart local v9    # "v":Landroid/view/View;
    :cond_ab
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " view that can be bounds by this SimpleAdapter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;
    .param p5, "resource"    # I

    .prologue
    .line 127
    if-nez p3, :cond_b

    .line 128
    const/4 v1, 0x0

    invoke-virtual {p1, p5, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "v":Landroid/view/View;
    :goto_7
    invoke-direct {p0, p2, v0}, bindView(ILandroid/view/View;)V

    .line 135
    return-object v0

    .line 130
    .end local v0    # "v":Landroid/view/View;
    :cond_b
    move-object v0, p3

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_7
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 178
    iget-object v0, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_11

    iget-object v1, p0, mInflater:Landroid/view/LayoutInflater;

    .line 179
    .local v1, "inflater":Landroid/view/LayoutInflater;
    :goto_6
    iget v5, p0, mDropDownResource:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 178
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_11
    iget-object v1, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_6
.end method

.method public getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_5
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    if-nez v0, :cond_c

    .line 318
    new-instance v0, Landroid/widget/SimpleAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$1;)V

    iput-object v0, p0, mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    .line 320
    :cond_c
    iget-object v0, p0, mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 107
    iget-object v0, p0, mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 121
    iget-object v1, p0, mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, mResource:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinder()Landroid/widget/SimpleAdapter$ViewBinder;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .registers 2
    .param p1, "resource"    # I

    .prologue
    .line 145
    iput p1, p0, mDropDownResource:I

    .line 146
    return-void
.end method

.method public setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 161
    if-nez p1, :cond_6

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    .line 169
    :goto_5
    return-void

    .line 163
    :cond_6
    iget-object v1, p0, mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-ne p1, v1, :cond_17

    .line 164
    iget-object v1, p0, mInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_5

    .line 166
    :cond_17
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 167
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_5
.end method

.method public setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V
    .registers 2
    .param p1, "viewBinder"    # Landroid/widget/SimpleAdapter$ViewBinder;

    .prologue
    .line 259
    iput-object p1, p0, mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 260
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;I)V
    .registers 3
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # I

    .prologue
    .line 276
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 298
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 302
    :goto_7
    return-void

    .line 299
    :catch_8
    move-exception v0

    .line 300
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_7
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method
