.class public Lcom/android/camera/opengl/effect/sticker/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static CURRENT_MG_BEAUTIFY_ADD_PINK:I = 0x0

.field public static CURRENT_MG_BEAUTIFY_BRIGHTNESS:I = 0x0

.field public static CURRENT_MG_BEAUTIFY_DENOISE:I = 0x0

.field public static CURRENT_MG_BEAUTIFY_ENLARGE_EYE:I = 0x0

.field public static CURRENT_MG_BEAUTIFY_SHRINK_FACE:I = 0x0

.field public static final KEYS:[Ljava/lang/String;

.field public static final MG_FPP_DETECTIONMODE_NORMAL:I = 0x0

.field public static final MG_FPP_DETECTIONMODE_TRACKING:I = 0x1

.field public static final MG_FPP_DETECTIONMODE_TRACKING_FAST:I = 0x3

.field public static final MG_FPP_DETECTIONMODE_TRACKING_ROBUST:I = 0x4

.field public static final MG_FPP_DETECTIONMODE_TRACKING_SMOOTH:I = 0x2

.field public static final MG_IMAGEMODE_BGR:I = 0x1

.field public static final MG_IMAGEMODE_COUNT:I = 0x5

.field public static final MG_IMAGEMODE_GRAY:I = 0x0

.field public static final MG_IMAGEMODE_NV21:I = 0x2

.field public static final MG_IMAGEMODE_RGB:I = 0x4

.field public static final MG_IMAGEMODE_RGBA:I = 0x3

.field public static final TYPE_FILTER:I = 0x1

.field public static final TYPE_STICKER:I

.field public static volatile filterPath:Ljava/lang/String;

.field public static isDebuging:Z

.field public static volatile isFiltered:Z

.field public static sCurrentStickerPath:Ljava/lang/String;

.field public static switchcamera:Z

.field public static switchcount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "KEY_STICKER"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "KEY_FILTER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/opengl/effect/sticker/util/Util;->KEYS:[Ljava/lang/String;

    .line 14
    sput v3, Lcom/android/camera/opengl/effect/sticker/util/Util;->CURRENT_MG_BEAUTIFY_ENLARGE_EYE:I

    .line 15
    sput v3, Lcom/android/camera/opengl/effect/sticker/util/Util;->CURRENT_MG_BEAUTIFY_SHRINK_FACE:I

    .line 16
    sput v3, Lcom/android/camera/opengl/effect/sticker/util/Util;->CURRENT_MG_BEAUTIFY_BRIGHTNESS:I

    .line 17
    sput v3, Lcom/android/camera/opengl/effect/sticker/util/Util;->CURRENT_MG_BEAUTIFY_DENOISE:I

    .line 18
    sput v3, Lcom/android/camera/opengl/effect/sticker/util/Util;->CURRENT_MG_BEAUTIFY_ADD_PINK:I

    .line 28
    sput-boolean v4, Lcom/android/camera/opengl/effect/sticker/util/Util;->switchcamera:Z

    .line 29
    sput v4, Lcom/android/camera/opengl/effect/sticker/util/Util;->switchcount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
