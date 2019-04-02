.class public Lcom/android/camera/one/OZOModeSelector;
.super Ljava/lang/Object;
.source "OZOModeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;
    }
.end annotation


# static fields
.field private static final OZO_DYNAMIC_MODE_FRONT:I = 0x1

.field private static final OZO_DYNAMIC_MODE_OFF:I = 0x0

.field private static final OZO_DYNAMIC_MODE_REAR:I = 0x2

.field private static final OZO_MODE_FRONT_0_DUAL:I = 0x15

.field private static final OZO_MODE_FRONT_0_FRONT:I = 0x14

.field private static final OZO_MODE_FRONT_0_MAIN:I = 0x13

.field private static final OZO_MODE_FRONT_180_DUAL:I = 0x18

.field private static final OZO_MODE_FRONT_180_FRONT:I = 0x17

.field private static final OZO_MODE_FRONT_180_MAIN:I = 0x16

.field private static final OZO_MODE_FRONT_270_DUAL:I = 0xf

.field private static final OZO_MODE_FRONT_270_FRONT:I = 0xe

.field private static final OZO_MODE_FRONT_270_MAIN:I = 0xd

.field private static final OZO_MODE_FRONT_90_DUAL:I = 0x12

.field private static final OZO_MODE_FRONT_90_FRONT:I = 0x11

.field private static final OZO_MODE_FRONT_90_MAIN:I = 0x10

.field private static final OZO_MODE_OFF:I = 0x0

.field private static final OZO_MODE_REAR_0_DUAL:I = 0x21

.field private static final OZO_MODE_REAR_0_FRONT:I = 0x20

.field private static final OZO_MODE_REAR_0_MAIN:I = 0x1f

.field private static final OZO_MODE_REAR_180_DUAL:I = 0x24

.field private static final OZO_MODE_REAR_180_FRONT:I = 0x23

.field private static final OZO_MODE_REAR_180_MAIN:I = 0x22

.field private static final OZO_MODE_REAR_270_DUAL:I = 0x1b

.field private static final OZO_MODE_REAR_270_FRONT:I = 0x1a

.field private static final OZO_MODE_REAR_270_MAIN:I = 0x19

.field private static final OZO_MODE_REAR_90_DUAL:I = 0x1e

.field private static final OZO_MODE_REAR_90_FRONT:I = 0x1d

.field private static final OZO_MODE_REAR_90_MAIN:I = 0x1c

.field private static final OZO_MODE_SURROUND_0_DUAL:I = 0x9

.field private static final OZO_MODE_SURROUND_0_FRONT:I = 0x8

.field private static final OZO_MODE_SURROUND_0_MAIN:I = 0x7

.field private static final OZO_MODE_SURROUND_180_DUAL:I = 0xc

.field private static final OZO_MODE_SURROUND_180_FRONT:I = 0xb

.field private static final OZO_MODE_SURROUND_180_MAIN:I = 0xa

.field private static final OZO_MODE_SURROUND_270_DUAL:I = 0x3

.field private static final OZO_MODE_SURROUND_270_FRONT:I = 0x2

.field private static final OZO_MODE_SURROUND_270_MAIN:I = 0x1

.field private static final OZO_MODE_SURROUND_90_DUAL:I = 0x6

.field private static final OZO_MODE_SURROUND_90_FRONT:I = 0x5

.field private static final OZO_MODE_SURROUND_90_MAIN:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOZODynamicMode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "surround"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 244
    const v4, 0x7f080418

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "FOCUS_FRONT":Ljava/lang/String;
    const v4, 0x7f08041a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "FOCUS_SURROUND":Ljava/lang/String;
    const v4, 0x7f080419

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "FOCUS_REAR":Ljava/lang/String;
    const/4 v3, 0x0

    .line 250
    .local v3, "ozo_mode":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    const/4 v3, 0x1

    .line 258
    :cond_0
    :goto_0
    return v3

    .line 252
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    const/4 v3, 0x0

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public static getOZOMode(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "surround"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "facing"    # Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;
    .param p3, "orientation"    # I

    .prologue
    .line 108
    const v4, 0x7f080418

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "FOCUS_FRONT":Ljava/lang/String;
    const v4, 0x7f08041a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "FOCUS_SURROUND":Ljava/lang/String;
    const v4, 0x7f080419

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "FOCUS_REAR":Ljava/lang/String;
    const/4 v3, 0x0

    .line 114
    .local v3, "ozo_mode":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 115
    sparse-switch p3, :sswitch_data_0

    .line 239
    :cond_0
    :goto_0
    return v3

    .line 117
    :sswitch_0
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_1

    .line 118
    const/16 v3, 0x13

    goto :goto_0

    .line 119
    :cond_1
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_2

    .line 120
    const/16 v3, 0x14

    goto :goto_0

    .line 122
    :cond_2
    const/16 v3, 0x15

    .line 124
    goto :goto_0

    .line 126
    :sswitch_1
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_3

    .line 127
    const/16 v3, 0x10

    goto :goto_0

    .line 128
    :cond_3
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_4

    .line 129
    const/16 v3, 0x11

    goto :goto_0

    .line 131
    :cond_4
    const/16 v3, 0x12

    .line 133
    goto :goto_0

    .line 135
    :sswitch_2
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_5

    .line 136
    const/16 v3, 0x16

    goto :goto_0

    .line 137
    :cond_5
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_6

    .line 138
    const/16 v3, 0x17

    goto :goto_0

    .line 140
    :cond_6
    const/16 v3, 0x18

    .line 142
    goto :goto_0

    .line 144
    :sswitch_3
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_7

    .line 145
    const/16 v3, 0xd

    goto :goto_0

    .line 146
    :cond_7
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_8

    .line 147
    const/16 v3, 0xe

    goto :goto_0

    .line 149
    :cond_8
    const/16 v3, 0xf

    .line 151
    goto :goto_0

    .line 155
    :cond_9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 156
    sparse-switch p3, :sswitch_data_1

    goto :goto_0

    .line 158
    :sswitch_4
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_a

    .line 159
    const/4 v3, 0x7

    goto :goto_0

    .line 160
    :cond_a
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_b

    .line 161
    const/16 v3, 0x8

    goto :goto_0

    .line 163
    :cond_b
    const/16 v3, 0x9

    .line 165
    goto :goto_0

    .line 167
    :sswitch_5
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_c

    .line 168
    const/4 v3, 0x4

    goto :goto_0

    .line 169
    :cond_c
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_d

    .line 170
    const/4 v3, 0x5

    goto :goto_0

    .line 172
    :cond_d
    const/4 v3, 0x6

    .line 174
    goto :goto_0

    .line 176
    :sswitch_6
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_e

    .line 177
    const/16 v3, 0xa

    goto :goto_0

    .line 178
    :cond_e
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_f

    .line 179
    const/16 v3, 0xb

    goto :goto_0

    .line 181
    :cond_f
    const/16 v3, 0xc

    .line 183
    goto :goto_0

    .line 185
    :sswitch_7
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_10

    .line 186
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 187
    :cond_10
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_11

    .line 188
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 190
    :cond_11
    const/4 v3, 0x3

    .line 192
    goto/16 :goto_0

    .line 196
    :cond_12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    sparse-switch p3, :sswitch_data_2

    goto/16 :goto_0

    .line 199
    :sswitch_8
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_13

    .line 200
    const/16 v3, 0x1f

    goto/16 :goto_0

    .line 201
    :cond_13
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_14

    .line 202
    const/16 v3, 0x20

    goto/16 :goto_0

    .line 204
    :cond_14
    const/16 v3, 0x21

    .line 206
    goto/16 :goto_0

    .line 208
    :sswitch_9
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_15

    .line 209
    const/16 v3, 0x1c

    goto/16 :goto_0

    .line 210
    :cond_15
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_16

    .line 211
    const/16 v3, 0x1d

    goto/16 :goto_0

    .line 213
    :cond_16
    const/16 v3, 0x1e

    .line 215
    goto/16 :goto_0

    .line 217
    :sswitch_a
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_17

    .line 218
    const/16 v3, 0x22

    goto/16 :goto_0

    .line 219
    :cond_17
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_18

    .line 220
    const/16 v3, 0x23

    goto/16 :goto_0

    .line 222
    :cond_18
    const/16 v3, 0x24

    .line 224
    goto/16 :goto_0

    .line 226
    :sswitch_b
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_19

    .line 227
    const/16 v3, 0x19

    goto/16 :goto_0

    .line 228
    :cond_19
    sget-object v4, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    if-ne p2, v4, :cond_1a

    .line 229
    const/16 v3, 0x1a

    goto/16 :goto_0

    .line 231
    :cond_1a
    const/16 v3, 0x1b

    .line 233
    goto/16 :goto_0

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 156
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch

    .line 197
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_8
        0x5a -> :sswitch_9
        0xb4 -> :sswitch_a
        0x10e -> :sswitch_b
    .end sparse-switch
.end method
