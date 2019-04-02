.class final enum Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;
.super Ljava/lang/Enum;
.source "EngineStyleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ENGINE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

.field public static final enum ANIMOJI:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

.field public static final enum BEAUTY:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

.field public static final enum ORIGINAL:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

.field public static final enum PORTRAIT_LIGHTEN:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

.field public static final enum STICKER:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

.field public static final enum STYLE_TRANSFER:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->ORIGINAL:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    new-instance v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    const-string v1, "PORTRAIT_LIGHTEN"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->PORTRAIT_LIGHTEN:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    new-instance v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    const-string v1, "STICKER"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->STICKER:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    new-instance v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    const-string v1, "ANIMOJI"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->ANIMOJI:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    new-instance v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    const-string v1, "STYLE_TRANSFER"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->STYLE_TRANSFER:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    new-instance v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    const-string v1, "BEAUTY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->BEAUTY:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    sget-object v1, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->ORIGINAL:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->PORTRAIT_LIGHTEN:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->STICKER:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->ANIMOJI:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->STYLE_TRANSFER:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->BEAUTY:Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->$VALUES:[Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->$VALUES:[Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    invoke-virtual {v0}, [Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/effect/util/EngineStyleInfo$PreviewEngineFactory$ENGINE;

    return-object v0
.end method
