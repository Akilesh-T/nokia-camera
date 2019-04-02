.class public Lcom/android/ex/camera2/portability/CameraActions;
.super Ljava/lang/Object;
.source "CameraActions.java"


# static fields
.field public static final ABORT_CAPTURE:I = 0x25a

.field public static final ADD_CALLBACK_BUFFER:I = 0x69

.field public static final APPLY_SETTINGS:I = 0xcc

.field public static final AUTO_FOCUS:I = 0x12d

.field public static final CANCEL_AUTO_FOCUS:I = 0x12e

.field public static final CANCEL_AUTO_FOCUS_FINISH:I = 0x131

.field public static final CAPTURE_BEAUTY:I = 0x2c4

.field public static final CAPTURE_BOKEH:I = 0x2c5

.field public static final CAPTURE_DENOISE:I = 0x2c2

.field public static final CAPTURE_HDR:I = 0x2c1

.field public static final CAPTURE_LOWLIGHT:I = 0x2c3

.field public static final CAPTURE_PHOTO:I = 0x259

.field public static final ENABLE_SHUTTER_SOUND:I = 0x1f5

.field public static final GET_PARAMETERS:I = 0xca

.field public static final LOCK:I = 0x5

.field public static final OPEN_CAMERA:I = 0x1

.field public static final RECONNECT:I = 0x3

.field public static final REFRESH_PARAMETERS:I = 0xcb

.field public static final RELEASE:I = 0x2

.field public static final SET_AUTO_FOCUS_MOVE_CALLBACK:I = 0x12f

.field public static final SET_DISPLAY_ORIENTATION:I = 0x1f6

.field public static final SET_FACE_DETECTION_LISTENER:I = 0x1cd

.field public static final SET_JPEG_ORIENTATION:I = 0x1f7

.field public static final SET_METADATA_CALLBACK:I = 0x1d7

.field public static final SET_ONE_SHOT_PREVIEW_CALLBACK:I = 0x6c

.field public static final SET_PARAMETERS:I = 0xc9

.field public static final SET_PREVIEW_CALLBACK:I = 0x6b

.field public static final SET_PREVIEW_CALLBACK_WITH_BUFFER:I = 0x68

.field public static final SET_PREVIEW_DISPLAY_ASYNC:I = 0x6a

.field public static final SET_PREVIEW_TEXTURE_ASYNC:I = 0x65

.field public static final SET_ZOOM_CHANGE_LISTENER:I = 0x130

.field public static final START_BURST:I = 0x2bd

.field public static final START_FACE_DETECTION:I = 0x1ce

.field public static final START_PANORAMA:I = 0x2bf

.field public static final START_PREVIEW_ASYNC:I = 0x66

.field public static final STOP_BURST:I = 0x2be

.field public static final STOP_FACE_DETECTION:I = 0x1cf

.field public static final STOP_PANORAMA:I = 0x2c0

.field public static final STOP_PREVIEW:I = 0x67

.field public static final UNKNOW:I = -0x1

.field public static final UNLOCK:I = 0x4

.field public static final WARM_START:I = 0x6


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static stringify(I)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # I

    .prologue
    .line 74
    sparse-switch p0, :sswitch_data_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 76
    :sswitch_0
    const-string v0, "OPEN_CAMERA"

    goto :goto_0

    .line 78
    :sswitch_1
    const-string v0, "RELEASE"

    goto :goto_0

    .line 80
    :sswitch_2
    const-string v0, "RECONNECT"

    goto :goto_0

    .line 82
    :sswitch_3
    const-string v0, "UNLOCK"

    goto :goto_0

    .line 84
    :sswitch_4
    const-string v0, "LOCK"

    goto :goto_0

    .line 86
    :sswitch_5
    const-string v0, "WARM_START"

    goto :goto_0

    .line 88
    :sswitch_6
    const-string v0, "SET_PREVIEW_TEXTURE_ASYNC"

    goto :goto_0

    .line 90
    :sswitch_7
    const-string v0, "START_PREVIEW_ASYNC"

    goto :goto_0

    .line 92
    :sswitch_8
    const-string v0, "STOP_PREVIEW"

    goto :goto_0

    .line 94
    :sswitch_9
    const-string v0, "SET_PREVIEW_CALLBACK_WITH_BUFFER"

    goto :goto_0

    .line 96
    :sswitch_a
    const-string v0, "ADD_CALLBACK_BUFFER"

    goto :goto_0

    .line 98
    :sswitch_b
    const-string v0, "SET_PREVIEW_DISPLAY_ASYNC"

    goto :goto_0

    .line 100
    :sswitch_c
    const-string v0, "SET_PREVIEW_CALLBACK"

    goto :goto_0

    .line 102
    :sswitch_d
    const-string v0, "SET_ONE_SHOT_PREVIEW_CALLBACK"

    goto :goto_0

    .line 104
    :sswitch_e
    const-string v0, "SET_PARAMETERS"

    goto :goto_0

    .line 106
    :sswitch_f
    const-string v0, "GET_PARAMETERS"

    goto :goto_0

    .line 108
    :sswitch_10
    const-string v0, "REFRESH_PARAMETERS"

    goto :goto_0

    .line 110
    :sswitch_11
    const-string v0, "APPLY_SETTINGS"

    goto :goto_0

    .line 112
    :sswitch_12
    const-string v0, "AUTO_FOCUS"

    goto :goto_0

    .line 114
    :sswitch_13
    const-string v0, "CANCEL_AUTO_FOCUS"

    goto :goto_0

    .line 116
    :sswitch_14
    const-string v0, "SET_AUTO_FOCUS_MOVE_CALLBACK"

    goto :goto_0

    .line 118
    :sswitch_15
    const-string v0, "SET_ZOOM_CHANGE_LISTENER"

    goto :goto_0

    .line 120
    :sswitch_16
    const-string v0, "CANCEL_AUTO_FOCUS_FINISH"

    goto :goto_0

    .line 122
    :sswitch_17
    const-string v0, "SET_FACE_DETECTION_LISTENER"

    goto :goto_0

    .line 124
    :sswitch_18
    const-string v0, "START_FACE_DETECTION"

    goto :goto_0

    .line 126
    :sswitch_19
    const-string v0, "STOP_FACE_DETECTION"

    goto :goto_0

    .line 128
    :sswitch_1a
    const-string v0, "SET_METADATA_CALLBACK"

    goto :goto_0

    .line 130
    :sswitch_1b
    const-string v0, "ENABLE_SHUTTER_SOUND"

    goto :goto_0

    .line 132
    :sswitch_1c
    const-string v0, "SET_DISPLAY_ORIENTATION"

    goto :goto_0

    .line 134
    :sswitch_1d
    const-string v0, "SET_JPEG_ORIENTATION"

    goto :goto_0

    .line 136
    :sswitch_1e
    const-string v0, "CAPTURE_PHOTO"

    goto :goto_0

    .line 138
    :sswitch_1f
    const-string v0, "ABORT_CAPTURE"

    goto :goto_0

    .line 140
    :sswitch_20
    const-string v0, "START_BURST"

    goto :goto_0

    .line 142
    :sswitch_21
    const-string v0, "STOP_BURST"

    goto :goto_0

    .line 144
    :sswitch_22
    const-string v0, "START_PANORAMA"

    goto :goto_0

    .line 146
    :sswitch_23
    const-string v0, "STOP_PANORAMA"

    goto :goto_0

    .line 148
    :sswitch_24
    const-string v0, "CAPTURE_HDR"

    goto :goto_0

    .line 150
    :sswitch_25
    const-string v0, "CAPTURE_DENOISE"

    goto :goto_0

    .line 152
    :sswitch_26
    const-string v0, "CAPTURE_LOWLIGHT"

    goto :goto_0

    .line 154
    :sswitch_27
    const-string v0, "CAPTURE_BEAUTY"

    goto :goto_0

    .line 156
    :sswitch_28
    const-string v0, "CAPTURE_BOKEH"

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
        0x67 -> :sswitch_8
        0x68 -> :sswitch_9
        0x69 -> :sswitch_a
        0x6a -> :sswitch_b
        0x6b -> :sswitch_c
        0x6c -> :sswitch_d
        0xc9 -> :sswitch_e
        0xca -> :sswitch_f
        0xcb -> :sswitch_10
        0xcc -> :sswitch_11
        0x12d -> :sswitch_12
        0x12e -> :sswitch_13
        0x12f -> :sswitch_14
        0x130 -> :sswitch_15
        0x131 -> :sswitch_16
        0x1cd -> :sswitch_17
        0x1ce -> :sswitch_18
        0x1cf -> :sswitch_19
        0x1d7 -> :sswitch_1a
        0x1f5 -> :sswitch_1b
        0x1f6 -> :sswitch_1c
        0x1f7 -> :sswitch_1d
        0x259 -> :sswitch_1e
        0x25a -> :sswitch_1f
        0x2bd -> :sswitch_20
        0x2be -> :sswitch_21
        0x2bf -> :sswitch_22
        0x2c0 -> :sswitch_23
        0x2c1 -> :sswitch_24
        0x2c2 -> :sswitch_25
        0x2c3 -> :sswitch_26
        0x2c4 -> :sswitch_27
        0x2c5 -> :sswitch_28
    .end sparse-switch
.end method
