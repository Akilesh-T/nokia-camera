.class final Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProviderDbHelper.java"


# static fields
.field public static final COLUMN_IMAGETYPE:Ljava/lang/String; = "imagetype"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final DUAL_SIGHT_TPYE:I = 0x40001

.field public static final EDIT_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.evenwell.bokeheditor.ui.activity.RefocusActivity"

.field public static final EDIT_ACTIVITY_PACKAGE_NAME:Ljava/lang/String; = "com.evenwell.bokeheditor"

.field public static final G_DEPTH_IMAGETYPE:I = 0x30002

.field public static final G_IMAGE_IMAGETYPE:I = 0x30003

.field public static final MPO_TYPE_MFI_BOKEH_DEPTH:I = 0x30001

.field private static final NAME:Ljava/lang/String; = "provider_db_helper"

.field private static volatile helper:Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v0, "provider_db_helper"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->helper:Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->helper:Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;

    invoke-direct {v0, p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->helper:Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->helper:Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/apps/photos/api/PhotoOemProvider/TypeIdTable;->getCreateSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/google/android/apps/photos/api/PhotoOemProvider/TypeIdTable;->getCreateVideoSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 54
    move v0, p2

    .line 55
    .local v0, "currentVersion":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 56
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    const-string v1, "depth_type"

    invoke-virtual {p1, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
