.class public final enum Lcom/android/camera/data/FilmstripItemType;
.super Ljava/lang/Enum;
.source "FilmstripItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/data/FilmstripItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/data/FilmstripItemType;

.field public static final enum CAMERA_PREVIEW:Lcom/android/camera/data/FilmstripItemType;

.field public static final enum PHOTO:Lcom/android/camera/data/FilmstripItemType;

.field public static final enum SECURE_ALBUM_PLACEHOLDER:Lcom/android/camera/data/FilmstripItemType;

.field public static final enum SESSION:Lcom/android/camera/data/FilmstripItemType;

.field public static final enum VIDEO:Lcom/android/camera/data/FilmstripItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/camera/data/FilmstripItemType;

    const-string v1, "CAMERA_PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FilmstripItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemType;->CAMERA_PREVIEW:Lcom/android/camera/data/FilmstripItemType;

    .line 25
    new-instance v0, Lcom/android/camera/data/FilmstripItemType;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/data/FilmstripItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemType;->PHOTO:Lcom/android/camera/data/FilmstripItemType;

    .line 26
    new-instance v0, Lcom/android/camera/data/FilmstripItemType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/data/FilmstripItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemType;->VIDEO:Lcom/android/camera/data/FilmstripItemType;

    .line 27
    new-instance v0, Lcom/android/camera/data/FilmstripItemType;

    const-string v1, "SESSION"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/data/FilmstripItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemType;->SESSION:Lcom/android/camera/data/FilmstripItemType;

    .line 28
    new-instance v0, Lcom/android/camera/data/FilmstripItemType;

    const-string v1, "SECURE_ALBUM_PLACEHOLDER"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/data/FilmstripItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemType;->SECURE_ALBUM_PLACEHOLDER:Lcom/android/camera/data/FilmstripItemType;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/data/FilmstripItemType;

    sget-object v1, Lcom/android/camera/data/FilmstripItemType;->CAMERA_PREVIEW:Lcom/android/camera/data/FilmstripItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/data/FilmstripItemType;->PHOTO:Lcom/android/camera/data/FilmstripItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/data/FilmstripItemType;->VIDEO:Lcom/android/camera/data/FilmstripItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/data/FilmstripItemType;->SESSION:Lcom/android/camera/data/FilmstripItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/data/FilmstripItemType;->SECURE_ALBUM_PLACEHOLDER:Lcom/android/camera/data/FilmstripItemType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/data/FilmstripItemType;->$VALUES:[Lcom/android/camera/data/FilmstripItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/data/FilmstripItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/android/camera/data/FilmstripItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripItemType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/data/FilmstripItemType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/data/FilmstripItemType;->$VALUES:[Lcom/android/camera/data/FilmstripItemType;

    invoke-virtual {v0}, [Lcom/android/camera/data/FilmstripItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/data/FilmstripItemType;

    return-object v0
.end method
