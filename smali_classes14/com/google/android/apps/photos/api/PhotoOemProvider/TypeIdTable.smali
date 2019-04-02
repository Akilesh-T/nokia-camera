.class public Lcom/google/android/apps/photos/api/PhotoOemProvider/TypeIdTable;
.super Ljava/lang/Object;
.source "TypeIdTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/photos/api/PhotoOemProvider/TypeIdTable$Columns;
    }
.end annotation


# static fields
.field public static final SELECT_MEDIA_STORE_ID:Ljava/lang/String; = "media_store_id = ?"

.field public static final TABLE_NAME:Ljava/lang/String; = "depth_type"

.field public static final VIDEO_SPECIAL_TYPE_TABLE_NAME:Ljava/lang/String; = "video_special_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCreateSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "CREATE TABLE depth_type (media_store_id INTEGER PRIMARY KEY, special_type_id TEXT NOT NULL)"

    return-object v0
.end method

.method static getCreateVideoSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "CREATE TABLE video_special_type (media_store_id INTEGER PRIMARY KEY, special_type_id TEXT NOT NULL)"

    return-object v0
.end method
