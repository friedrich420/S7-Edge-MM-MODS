.class public abstract Landroid/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/widget/CursorFilter$CursorFilterClient;
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ThemedSpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorAdapter$1;,
        Landroid/widget/CursorAdapter$MyDataSetObserver;,
        Landroid/widget/CursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Landroid/widget/CursorFilter;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mDropDownContext:Landroid/content/Context;

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 157
    invoke-virtual {p0, p1, p2, p3}, init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 144
    if-eqz p3, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, p1, p2, v0}, init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 145
    return-void

    .line 144
    :cond_a
    const/4 v0, 0x2

    goto :goto_6
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 349
    invoke-virtual {p0, p1}, swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 350
    .local v0, "old":Landroid/database/Cursor;
    if-eqz v0, :cond_9

    .line 351
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_9
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 401
    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, mDataValid:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 235
    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 237
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 295
    iget-boolean v2, p0, mDataValid:Z

    if-eqz v2, :cond_22

    .line 296
    iget-object v2, p0, mDropDownContext:Landroid/content/Context;

    if-nez v2, :cond_1d

    iget-object v0, p0, mContext:Landroid/content/Context;

    .line 297
    .local v0, "context":Landroid/content/Context;
    :goto_a
    iget-object v2, p0, mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 299
    if-nez p2, :cond_20

    .line 300
    iget-object v2, p0, mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v2, p3}, newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 304
    .local v1, "v":Landroid/view/View;
    :goto_17
    iget-object v2, p0, mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, v2}, bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 307
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "v":Landroid/view/View;
    :goto_1c
    return-object v1

    .line 296
    :cond_1d
    iget-object v0, p0, mDropDownContext:Landroid/content/Context;

    goto :goto_a

    .line 302
    .restart local v0    # "context":Landroid/content/Context;
    :cond_20
    move-object v1, p2

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_17

    .line 307
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "v":Landroid/view/View;
    :cond_22
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, mDropDownContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, mDropDownContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_5
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, mCursorFilter:Landroid/widget/CursorFilter;

    if-nez v0, :cond_b

    .line 440
    new-instance v0, Landroid/widget/CursorFilter;

    invoke-direct {v0, p0}, Landroid/widget/CursorFilter;-><init>(Landroid/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, mCursorFilter:Landroid/widget/CursorFilter;

    .line 442
    :cond_b
    iget-object v0, p0, mCursorFilter:Landroid/widget/CursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 245
    iget-boolean v0, p0, mDataValid:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 246
    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 247
    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    .line 249
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getItemId(I)J
    .registers 5
    .param p1, "position"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 257
    iget-boolean v2, p0, mDataValid:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1a

    .line 258
    iget-object v2, p0, mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 259
    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    iget v1, p0, mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 264
    :cond_1a
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 277
    iget-boolean v1, p0, mDataValid:Z

    if-nez v1, :cond_d

    .line 278
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_d
    iget-object v1, p0, mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 281
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_2e
    if-nez p2, :cond_40

    .line 285
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "v":Landroid/view/View;
    :goto_38
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 290
    return-object v0

    .line 287
    .end local v0    # "v":Landroid/view/View;
    :cond_40
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_38
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 170
    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_45

    .line 171
    or-int/lit8 p3, p3, 0x2

    .line 172
    iput-boolean v0, p0, mAutoRequery:Z

    .line 176
    :goto_b
    if-eqz p2, :cond_48

    .line 177
    .local v0, "cursorPresent":Z
    :goto_d
    iput-object p2, p0, mCursor:Landroid/database/Cursor;

    .line 178
    iput-boolean v0, p0, mDataValid:Z

    .line 179
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 180
    if-eqz v0, :cond_4a

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_1b
    iput v1, p0, mRowIDColumn:I

    .line 181
    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4c

    .line 182
    new-instance v1, Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Landroid/widget/CursorAdapter$ChangeObserver;-><init>(Landroid/widget/CursorAdapter;)V

    iput-object v1, p0, mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    .line 183
    new-instance v1, Landroid/widget/CursorAdapter$MyDataSetObserver;

    invoke-direct {v1, p0, v3}, Landroid/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/widget/CursorAdapter;Landroid/widget/CursorAdapter$1;)V

    iput-object v1, p0, mDataSetObserver:Landroid/database/DataSetObserver;

    .line 189
    :goto_30
    if-eqz v0, :cond_44

    .line 190
    iget-object v1, p0, mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_3b

    iget-object v1, p0, mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 191
    :cond_3b
    iget-object v1, p0, mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_44

    iget-object v1, p0, mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 193
    :cond_44
    return-void

    .line 174
    .end local v0    # "cursorPresent":Z
    :cond_45
    iput-boolean v1, p0, mAutoRequery:Z

    goto :goto_b

    :cond_48
    move v0, v1

    .line 176
    goto :goto_d

    .line 180
    .restart local v0    # "cursorPresent":Z
    :cond_4a
    const/4 v1, -0x1

    goto :goto_1b

    .line 185
    :cond_4c
    iput-object v3, p0, mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    .line 186
    iput-object v3, p0, mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_30
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    if-eqz p3, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, v0}, init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 167
    return-void

    .line 166
    :cond_7
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 330
    invoke-virtual {p0, p1, p2, p3}, newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .registers 2

    .prologue
    .line 482
    iget-boolean v0, p0, mAutoRequery:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 484
    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, mDataValid:Z

    .line 486
    :cond_18
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 431
    iget-object v0, p0, mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_b

    .line 432
    iget-object v0, p0, mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 435
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    goto :goto_a
.end method

.method public setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 208
    if-nez p1, :cond_6

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, mDropDownContext:Landroid/content/Context;

    .line 215
    :goto_5
    return-void

    .line 210
    :cond_6
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_13

    .line 211
    iget-object v0, p0, mContext:Landroid/content/Context;

    iput-object v0, p0, mDropDownContext:Landroid/content/Context;

    goto :goto_5

    .line 213
    :cond_13
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, mDropDownContext:Landroid/content/Context;

    goto :goto_5
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .registers 2
    .param p1, "filterQueryProvider"    # Landroid/widget/FilterQueryProvider;

    .prologue
    .line 471
    iput-object p1, p0, mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 472
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 366
    iget-object v1, p0, mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_6

    .line 367
    const/4 v0, 0x0

    .line 388
    :goto_5
    return-object v0

    .line 369
    :cond_6
    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    .line 370
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1c

    .line 371
    iget-object v1, p0, mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_13

    iget-object v1, p0, mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 372
    :cond_13
    iget-object v1, p0, mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1c

    iget-object v1, p0, mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 374
    :cond_1c
    iput-object p1, p0, mCursor:Landroid/database/Cursor;

    .line 375
    if-eqz p1, :cond_41

    .line 376
    iget-object v1, p0, mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_29

    iget-object v1, p0, mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 377
    :cond_29
    iget-object v1, p0, mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_32

    iget-object v1, p0, mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 378
    :cond_32
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mRowIDColumn:I

    .line 379
    const/4 v1, 0x1

    iput-boolean v1, p0, mDataValid:Z

    .line 381
    invoke-virtual {p0}, notifyDataSetChanged()V

    goto :goto_5

    .line 383
    :cond_41
    const/4 v1, -0x1

    iput v1, p0, mRowIDColumn:I

    .line 384
    const/4 v1, 0x0

    iput-boolean v1, p0, mDataValid:Z

    .line 386
    invoke-virtual {p0}, notifyDataSetInvalidated()V

    goto :goto_5
.end method
