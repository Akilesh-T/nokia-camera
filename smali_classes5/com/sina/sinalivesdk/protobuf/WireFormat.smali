.class public final Lcom/sina/sinalivesdk/protobuf/WireFormat;
.super Ljava/lang/Object;


# static fields
.field static final MESSAGE_SET_ITEM:I = 0x1

.field static final MESSAGE_SET_MESSAGE:I = 0x3

.field static final MESSAGE_SET_TYPE_ID:I = 0x2

.field static final MESSAGE_SET_TYPE_ID_TAG:I

.field static final TAG_TYPE_BITS:I = 0x3

.field static final TAG_TYPE_MASK:I = 0x7

.field public static final WIRETYPE_16BIT:I = 0x5

.field public static final WIRETYPE_32BIT:I = 0x4

.field public static final WIRETYPE_ARRAY:I = 0x3

.field public static final WIRETYPE_INVALID:I = -0x1

.field public static final WIRETYPE_STRING:I = 0x1

.field public static final WIRETYPE_STRUCT:I = 0x2

.field public static final WIRETYPE_SVARINT:I = 0x6

.field public static final WIRETYPE_VARINT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/sina/sinalivesdk/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagFieldNumber(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static getTagWireType(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static makeTag(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
