.class public Lcom/jmatio/common/MatDataTypes;
.super Ljava/lang/Object;


# static fields
.field public static final miCOMPRESSED:I = 0xf

.field public static final miDOUBLE:I = 0x9

.field public static final miINT16:I = 0x3

.field public static final miINT32:I = 0x5

.field public static final miINT64:I = 0xc

.field public static final miINT8:I = 0x1

.field public static final miMATRIX:I = 0xe

.field public static final miSINGLE:I = 0x7

.field public static final miSIZE_CHAR:I = 0x1

.field public static final miSIZE_DOUBLE:I = 0x8

.field public static final miSIZE_INT16:I = 0x2

.field public static final miSIZE_INT32:I = 0x4

.field public static final miSIZE_INT64:I = 0x8

.field public static final miSIZE_INT8:I = 0x1

.field public static final miSIZE_UINT16:I = 0x2

.field public static final miSIZE_UINT32:I = 0x4

.field public static final miSIZE_UINT64:I = 0x8

.field public static final miSIZE_UINT8:I = 0x1

.field public static final miUINT16:I = 0x4

.field public static final miUINT32:I = 0x6

.field public static final miUINT64:I = 0xd

.field public static final miUINT8:I = 0x2

.field public static final miUNKNOWN:I = 0x0

.field public static final miUTF16:I = 0x11

.field public static final miUTF32:I = 0x12

.field public static final miUTF8:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sizeOf(I)I
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v3, 0x8

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v2

    goto :goto_0

    :pswitch_4
    move v0, v2

    goto :goto_0

    :pswitch_5
    move v0, v3

    goto :goto_0

    :pswitch_6
    move v0, v3

    goto :goto_0

    :pswitch_7
    move v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "unknown"

    goto :goto_0

    :pswitch_2
    const-string v0, "int8"

    goto :goto_0

    :pswitch_3
    const-string v0, "uint8"

    goto :goto_0

    :pswitch_4
    const-string v0, "int16"

    goto :goto_0

    :pswitch_5
    const-string v0, "uint16"

    goto :goto_0

    :pswitch_6
    const-string v0, "int32"

    goto :goto_0

    :pswitch_7
    const-string v0, "uint32"

    goto :goto_0

    :pswitch_8
    const-string v0, "single"

    goto :goto_0

    :pswitch_9
    const-string v0, "double"

    goto :goto_0

    :pswitch_a
    const-string v0, "int64"

    goto :goto_0

    :pswitch_b
    const-string v0, "uint64"

    goto :goto_0

    :pswitch_c
    const-string v0, "matrix"

    goto :goto_0

    :pswitch_d
    const-string v0, "compressed"

    goto :goto_0

    :pswitch_e
    const-string v0, "uft8"

    goto :goto_0

    :pswitch_f
    const-string v0, "utf16"

    goto :goto_0

    :pswitch_10
    const-string v0, "utf32"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
