.class public Landroid/widget/ArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArrayAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ThemedSpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ArrayAdapter$1;,
        Landroid/widget/ArrayAdapter$ArrayFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;",
        "Landroid/widget/ThemedSpinnerAdapter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDropDownInflater:Landroid/view/LayoutInflater;

.field private mDropDownResource:I

.field private mFieldId:I

.field private mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<TT;>.ArrayFilter;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLock:Ljava/lang/Object;

.field private mNotifyOnChange:Z

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 113
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, <init>(Landroid/content/Context;IILjava/util/List;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I

    .prologue
    .line 125
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;IILjava/util/List;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, mFieldId:I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, mNotifyOnChange:Z

    .line 177
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 178
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    .line 179
    iput p2, p0, mDropDownResource:I

    iput p2, p0, mResource:I

    .line 180
    iput-object p4, p0, mObjects:Ljava/util/List;

    .line 181
    iput p3, p0, mFieldId:I

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p4, "objects":[Ljava/lang/Object;, "[TT;"
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;IILjava/util/List;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, <init>(Landroid/content/Context;IILjava/util/List;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p3, "objects":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, <init>(Landroid/content/Context;IILjava/util/List;)V

    .line 138
    return-void
.end method

.method static synthetic access$100(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ArrayAdapter;

    .prologue
    .line 53
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ArrayAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    iput-object p1, p0, mOriginalValues:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ArrayAdapter;

    .prologue
    .line 53
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ArrayAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ArrayAdapter;

    .prologue
    .line 53
    iget-object v0, p0, mObjects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/ArrayAdapter;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ArrayAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    iput-object p1, p0, mObjects:Ljava/util/List;

    return-object p1
.end method

.method public static createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textArrayResId"    # I
    .param p2, "textViewResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 464
    .local v0, "strings":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, p2, v0}, <init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-object v1
.end method

.method private createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;
    .param p5, "resource"    # I

    .prologue
    .line 377
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    if-nez p3, :cond_1d

    .line 378
    const/4 v5, 0x0

    invoke-virtual {p1, p5, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 384
    .local v4, "view":Landroid/view/View;
    :goto_7
    :try_start_7
    iget v5, p0, mFieldId:I

    if-nez v5, :cond_1f

    .line 386
    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_f} :catch_28

    .line 397
    .local v3, "text":Landroid/widget/TextView;
    :goto_f
    invoke-virtual {p0, p2}, getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 398
    .local v2, "item":Ljava/lang/Object;, "TT;"
    instance-of v5, v2, Ljava/lang/CharSequence;

    if-eqz v5, :cond_38

    .line 399
    check-cast v2, Ljava/lang/CharSequence;

    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :goto_1c
    return-object v4

    .line 380
    .end local v3    # "text":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_1d
    move-object v4, p3

    .restart local v4    # "view":Landroid/view/View;
    goto :goto_7

    .line 389
    :cond_1f
    :try_start_1f
    iget v5, p0, mFieldId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_27} :catch_28

    .restart local v3    # "text":Landroid/widget/TextView;
    goto :goto_f

    .line 391
    .end local v3    # "text":Landroid/widget/TextView;
    :catch_28
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v5, "ArrayAdapter"

    const-string v6, "You must supply a resource ID for a TextView"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 401
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "item":Ljava/lang/Object;, "TT;"
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_38
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_3
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 192
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 197
    iget-boolean v0, p0, mNotifyOnChange:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 198
    :cond_14
    return-void

    .line 194
    :cond_15
    :try_start_15
    iget-object v0, p0, mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 196
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_3
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 208
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 212
    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 213
    iget-boolean v0, p0, mNotifyOnChange:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 214
    :cond_14
    return-void

    .line 210
    :cond_15
    :try_start_15
    iget-object v0, p0, mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    .line 212
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_3
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 224
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 228
    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 229
    iget-boolean v0, p0, mNotifyOnChange:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 230
    :cond_14
    return-void

    .line 226
    :cond_15
    :try_start_15
    iget-object v0, p0, mObjects:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_c

    .line 228
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 269
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_3
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 271
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 275
    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 276
    iget-boolean v0, p0, mNotifyOnChange:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 277
    :cond_14
    return-void

    .line 273
    :cond_15
    :try_start_15
    iget-object v0, p0, mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_c

    .line 275
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 330
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 337
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, mObjects:Ljava/util/List;

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
    .line 447
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_11

    iget-object v1, p0, mInflater:Landroid/view/LayoutInflater;

    .line 448
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

    .line 447
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_11
    iget-object v1, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_6
.end method

.method public getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 442
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
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
    .line 471
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    if-nez v0, :cond_c

    .line 472
    new-instance v0, Landroid/widget/ArrayAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter$1;)V

    iput-object v0, p0, mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    .line 474
    :cond_c
    iget-object v0, p0, mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 362
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 369
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
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

.method public insert(Ljava/lang/Object;I)V
    .registers 5
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_3
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 241
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 245
    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 246
    iget-boolean v0, p0, mNotifyOnChange:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 247
    :cond_14
    return-void

    .line 243
    :cond_15
    :try_start_15
    iget-object v0, p0, mObjects:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_c

    .line 245
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 301
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, mNotifyOnChange:Z

    .line 303
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_3
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 257
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 262
    iget-boolean v0, p0, mNotifyOnChange:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 263
    :cond_14
    return-void

    .line 259
    :cond_15
    :try_start_15
    iget-object v0, p0, mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 261
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public setDropDownViewResource(I)V
    .registers 2
    .param p1, "resource"    # I

    .prologue
    .line 414
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iput p1, p0, mDropDownResource:I

    .line 415
    return-void
.end method

.method public setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 430
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    if-nez p1, :cond_6

    .line 431
    const/4 v1, 0x0

    iput-object v1, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    .line 438
    :goto_5
    return-void

    .line 432
    :cond_6
    iget-object v1, p0, mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-ne p1, v1, :cond_17

    .line 433
    iget-object v1, p0, mInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_5

    .line 435
    :cond_17
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 436
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_5
.end method

.method public setNotifyOnChange(Z)V
    .registers 2
    .param p1, "notifyOnChange"    # Z

    .prologue
    .line 320
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iput-boolean p1, p0, mNotifyOnChange:Z

    .line 321
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_3
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 288
    iget-object v0, p0, mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 292
    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 293
    iget-boolean v0, p0, mNotifyOnChange:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 294
    :cond_14
    return-void

    .line 290
    :cond_15
    :try_start_15
    iget-object v0, p0, mObjects:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_c

    .line 292
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v0
.end method
