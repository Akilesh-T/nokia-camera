.class synthetic Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$3;
.super Ljava/lang/Object;
.source "RtmpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$MessageType:[I

.field static final synthetic $SwitchMap$com$github$faucamp$simplertmp$packets$UserControl$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 534
    invoke-static {}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->values()[Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$MessageType:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$MessageType:[I

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->ABORT:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$MessageType:[I

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->USER_CONTROL_MESSAGE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$MessageType:[I

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->WINDOW_ACKNOWLEDGEMENT_SIZE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$MessageType:[I

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->SET_PEER_BANDWIDTH:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$MessageType:[I

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->COMMAND_AMF0:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    .line 541
    :goto_4
    invoke-static {}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->values()[Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$UserControl$Type:[I

    :try_start_5
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$UserControl$Type:[I

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->STREAM_BEGIN:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$UserControl$Type:[I

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->PING_REQUEST:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$UserControl$Type:[I

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->STREAM_EOF:Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    .line 534
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
