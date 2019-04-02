.class final enum Lcom/android/camera/effect/download/DownLoaderManager$JsonType;
.super Ljava/lang/Enum;
.source "DownLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/download/DownLoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "JsonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/effect/download/DownLoaderManager$JsonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

.field public static final enum ANIMOJI:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

.field public static final enum STICKER:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    const-string v1, "STICKER"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->STICKER:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    .line 127
    new-instance v0, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    const-string v1, "ANIMOJI"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ANIMOJI:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    sget-object v1, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->STICKER:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ANIMOJI:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->$VALUES:[Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/effect/download/DownLoaderManager$JsonType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    const-class v0, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/effect/download/DownLoaderManager$JsonType;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->$VALUES:[Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    invoke-virtual {v0}, [Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    return-object v0
.end method
