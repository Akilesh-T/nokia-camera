.class public Lcom/android/camera/util/FihOpticalConfiguration;
.super Ljava/lang/Object;
.source "FihOpticalConfiguration.java"


# instance fields
.field private camera_ans_int_front:Ljava/lang/String;

.field private camera_ans_int_main:Ljava/lang/String;

.field private camera_ans_l_int_front:Ljava/lang/String;

.field private camera_ans_l_int_main:Ljava/lang/String;

.field private camera_ans_s_int_front:Ljava/lang/String;

.field private camera_ans_s_int_main:Ljava/lang/String;

.field private camera_ans_sat_front:Ljava/lang/String;

.field private camera_ans_sat_main:Ljava/lang/String;

.field private camera_ans_scene_contract_front:Ljava/lang/String;

.field private camera_ans_scene_contract_main:Ljava/lang/String;

.field private camera_ans_sharpe_front:Ljava/lang/String;

.field private camera_ans_sharpe_main:Ljava/lang/String;

.field private camera_ans_th_front:Ljava/lang/String;

.field private camera_ans_th_main:Ljava/lang/String;

.field private camera_ans_uvproc_int_front:Ljava/lang/String;

.field private camera_ans_uvproc_int_main:Ljava/lang/String;

.field private camera_ans_yproc_int_front:Ljava/lang/String;

.field private camera_ans_yproc_int_main:Ljava/lang/String;

.field private camera_asdn_color_front:Ljava/lang/String;

.field private camera_asdn_color_main:Ljava/lang/String;

.field private camera_asdn_lumin_front:Ljava/lang/String;

.field private camera_asdn_lumin_main:Ljava/lang/String;

.field private camera_asdn_ring_front:Ljava/lang/String;

.field private camera_asdn_ring_main:Ljava/lang/String;

.field private camera_asdn_sharp_front:Ljava/lang/String;

.field private camera_asdn_sharp_main:Ljava/lang/String;

.field private camera_asdn_th_front:Ljava/lang/String;

.field private camera_asdn_th_main:Ljava/lang/String;

.field private camera_asdn_type_front:Ljava/lang/String;

.field private camera_asdn_type_main:Ljava/lang/String;

.field private camera_fhdr_array:Ljava/lang/String;

.field private camera_fhdr_b:Ljava/lang/String;

.field private camera_fhdr_bd:Ljava/lang/String;

.field private camera_fhdr_bvd:Ljava/lang/String;

.field private camera_fhdr_d:Ljava/lang/String;

.field private camera_fhdr_end_l_idx:Ljava/lang/String;

.field private camera_fhdr_ev:Ljava/lang/String;

.field private camera_fhdr_hdr_fmccl_p1:Ljava/lang/String;

.field private camera_fhdr_hdr_fmccl_p2:Ljava/lang/String;

.field private camera_fhdr_hdr_fsms:Ljava/lang/String;

.field private camera_fhdr_hdr_gdsl:Ljava/lang/String;

.field private camera_fhdr_hdr_grsl:Ljava/lang/String;

.field private camera_fhdr_hdr_grt:Ljava/lang/String;

.field private camera_fhdr_hdr_rrrt:Ljava/lang/String;

.field private camera_fhdr_l_idx:Ljava/lang/String;

.field private camera_fhdr_th_0:Ljava/lang/String;

.field private camera_fhdr_th_1:Ljava/lang/String;

.field private camera_fhdr_th_2:Ljava/lang/String;

.field private camera_fhdr_th_3:Ljava/lang/String;

.field private camera_fhdr_vb:Ljava/lang/String;

.field private camera_fhdr_vbd:Ljava/lang/String;

.field private camera_fhdr_vbvr:Ljava/lang/String;

.field private camera_fhdr_vd:Ljava/lang/String;

.field private camera_mhdr_array:Ljava/lang/String;

.field private camera_mhdr_b:Ljava/lang/String;

.field private camera_mhdr_bd:Ljava/lang/String;

.field private camera_mhdr_bvd:Ljava/lang/String;

.field private camera_mhdr_d:Ljava/lang/String;

.field private camera_mhdr_end_l_idx:Ljava/lang/String;

.field private camera_mhdr_ev:Ljava/lang/String;

.field private camera_mhdr_hdr_fmccl_p1:Ljava/lang/String;

.field private camera_mhdr_hdr_fmccl_p2:Ljava/lang/String;

.field private camera_mhdr_hdr_fsms:Ljava/lang/String;

.field private camera_mhdr_hdr_gdsl:Ljava/lang/String;

.field private camera_mhdr_hdr_grsl:Ljava/lang/String;

.field private camera_mhdr_hdr_grt:Ljava/lang/String;

.field private camera_mhdr_hdr_rrrt:Ljava/lang/String;

.field private camera_mhdr_l_idx:Ljava/lang/String;

.field private camera_mhdr_th_0:Ljava/lang/String;

.field private camera_mhdr_th_1:Ljava/lang/String;

.field private camera_mhdr_th_2:Ljava/lang/String;

.field private camera_mhdr_th_3:Ljava/lang/String;

.field private camera_mhdr_vb:Ljava/lang/String;

.field private camera_mhdr_vbd:Ljava/lang/String;

.field private camera_mhdr_vbvr:Ljava/lang/String;

.field private camera_mhdr_vd:Ljava/lang/String;

.field private optical_config_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_array:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_b:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_bd:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_bvd:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_d:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_end_l_idx:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_ev:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_fmccl_p1:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_fmccl_p2:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_fsms:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_gdsl:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_grsl:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_grt:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_rrrt:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_l_idx:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_0:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_1:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_2:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_3:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vb:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vbd:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vbvr:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vd:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_array:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_b:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_bd:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_bvd:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_d:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_end_l_idx:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_ev:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_fmccl_p1:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_fmccl_p2:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_fsms:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_gdsl:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_grsl:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_grt:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_rrrt:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_l_idx:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_0:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_1:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_2:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_3:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vb:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vbd:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vbvr:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vd:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_int_main:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_l_int_main:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sat_main:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sharpe_main:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_th_main:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_s_int_main:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_yproc_int_main:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_uvproc_int_main:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_scene_contract_main:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_type_main:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_color_main:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_lumin_main:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_sharp_main:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_ring_main:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_th_main:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_int_front:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_l_int_front:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sat_front:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sharpe_front:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_th_front:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_s_int_front:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_yproc_int_front:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_uvproc_int_front:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_scene_contract_front:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_type_front:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_color_front:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_lumin_front:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_sharp_front:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_ring_front:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_th_front:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->optical_config_version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCamera_ans_int_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_int_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_int_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_int_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_l_int_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_l_int_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_l_int_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_l_int_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_s_int_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_s_int_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_s_int_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_s_int_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_sat_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sat_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_sat_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sat_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_scene_contract_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_scene_contract_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_scene_contract_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_scene_contract_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_sharpe_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sharpe_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_sharpe_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sharpe_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_th_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_th_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_th_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_th_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_uvproc_int_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_uvproc_int_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_uvproc_int_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_uvproc_int_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_yproc_int_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_yproc_int_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_ans_yproc_int_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_yproc_int_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_color_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_color_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_color_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_color_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_lumin_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_lumin_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_lumin_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_lumin_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_ring_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_ring_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_ring_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_ring_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_sharp_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_sharp_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_sharp_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_sharp_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_th_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_th_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_th_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_th_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_type_front()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_type_front:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_asdn_type_main()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_type_main:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_array()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_array:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_b:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_bd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_bd:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_bvd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_bvd:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_d:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_end_l_idx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_end_l_idx:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_ev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_ev:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_hdr_fmccl_p1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_fmccl_p1:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_hdr_fmccl_p2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_fmccl_p2:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_hdr_fsms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_fsms:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_hdr_gdsl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_gdsl:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_hdr_grsl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_grsl:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_hdr_grt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_grt:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_hdr_rrrt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_rrrt:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_l_idx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_l_idx:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_th_0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_0:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_th_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_1:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_th_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_2:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_th_3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_3:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_vb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vb:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_vbd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vbd:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_vbvr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vbvr:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_fhdr_vd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vd:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_array()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_array:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_b:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_bd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_bd:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_bvd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_bvd:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_d:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_end_l_idx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_end_l_idx:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_ev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_ev:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_hdr_fmccl_p1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_fmccl_p1:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_hdr_fmccl_p2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_fmccl_p2:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_hdr_fsms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_fsms:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_hdr_gdsl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_gdsl:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_hdr_grsl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_grsl:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_hdr_grt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_grt:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_hdr_rrrt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_rrrt:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_l_idx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_l_idx:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_th_0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_0:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_th_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_1:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_th_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_2:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_th_3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_3:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_vb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vb:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_vbd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vbd:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_vbvr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vbvr:Ljava/lang/String;

    return-object v0
.end method

.method public getCamera_mhdr_vd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vd:Ljava/lang/String;

    return-object v0
.end method

.method public getOptical_config_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/camera/util/FihOpticalConfiguration;->optical_config_version:Ljava/lang/String;

    return-object v0
.end method

.method public setCamera_ans_int_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_int_front"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_int_front:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setCamera_ans_int_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_int_main"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_int_main:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setCamera_ans_l_int_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_l_int_front"    # Ljava/lang/String;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_l_int_front:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setCamera_ans_l_int_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_l_int_main"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_l_int_main:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setCamera_ans_s_int_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_s_int_front"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_s_int_front:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setCamera_ans_s_int_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_s_int_main"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_s_int_main:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setCamera_ans_sat_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_sat_front"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sat_front:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setCamera_ans_sat_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_sat_main"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sat_main:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setCamera_ans_scene_contract_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_scene_contract_front"    # Ljava/lang/String;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_scene_contract_front:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setCamera_ans_scene_contract_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_scene_contract_main"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_scene_contract_main:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setCamera_ans_sharpe_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_sharpe_front"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sharpe_front:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setCamera_ans_sharpe_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_sharpe_main"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_sharpe_main:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setCamera_ans_th_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_th_front"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_th_front:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setCamera_ans_th_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_th_main"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_th_main:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setCamera_ans_uvproc_int_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_uvproc_int_front"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_uvproc_int_front:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setCamera_ans_uvproc_int_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_uvproc_int_main"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_uvproc_int_main:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setCamera_ans_yproc_int_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_yproc_int_front"    # Ljava/lang/String;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_yproc_int_front:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public setCamera_ans_yproc_int_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_ans_yproc_int_main"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_ans_yproc_int_main:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setCamera_asdn_color_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_color_front"    # Ljava/lang/String;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_color_front:Ljava/lang/String;

    .line 494
    return-void
.end method

.method public setCamera_asdn_color_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_color_main"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_color_main:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setCamera_asdn_lumin_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_lumin_front"    # Ljava/lang/String;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_lumin_front:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public setCamera_asdn_lumin_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_lumin_main"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_lumin_main:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setCamera_asdn_ring_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_ring_front"    # Ljava/lang/String;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_ring_front:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public setCamera_asdn_ring_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_ring_main"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_ring_main:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setCamera_asdn_sharp_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_sharp_front"    # Ljava/lang/String;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_sharp_front:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public setCamera_asdn_sharp_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_sharp_main"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_sharp_main:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setCamera_asdn_th_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_th_front"    # Ljava/lang/String;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_th_front:Ljava/lang/String;

    .line 526
    return-void
.end method

.method public setCamera_asdn_th_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_th_main"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_th_main:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setCamera_asdn_type_front(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_type_front"    # Ljava/lang/String;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_type_front:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setCamera_asdn_type_main(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_asdn_type_main"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_asdn_type_main:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setCamera_fhdr_array(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_array"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_array:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setCamera_fhdr_b(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_b"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_b:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setCamera_fhdr_bd(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_bd"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_bd:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCamera_fhdr_bvd(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_bvd"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_bvd:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setCamera_fhdr_d(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_d"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_d:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setCamera_fhdr_end_l_idx(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_end_l_idx"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_end_l_idx:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setCamera_fhdr_ev(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_ev"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_ev:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setCamera_fhdr_hdr_fmccl_p1(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_hdr_fmccl_p1"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_fmccl_p1:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setCamera_fhdr_hdr_fmccl_p2(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_hdr_fmccl_p2"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_fmccl_p2:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setCamera_fhdr_hdr_fsms(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_hdr_fsms"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_fsms:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setCamera_fhdr_hdr_gdsl(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_hdr_gdsl"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_gdsl:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setCamera_fhdr_hdr_grsl(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_hdr_grsl"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_grsl:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setCamera_fhdr_hdr_grt(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_hdr_grt"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_grt:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setCamera_fhdr_hdr_rrrt(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_hdr_rrrt"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_hdr_rrrt:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setCamera_fhdr_l_idx(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_l_idx"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_l_idx:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setCamera_fhdr_th_0(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_th_0"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_0:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setCamera_fhdr_th_1(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_th_1"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_1:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setCamera_fhdr_th_2(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_th_2"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_2:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setCamera_fhdr_th_3(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_th_3"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_th_3:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setCamera_fhdr_vb(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_vb"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vb:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setCamera_fhdr_vbd(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_vbd"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vbd:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setCamera_fhdr_vbvr(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_vbvr"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vbvr:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setCamera_fhdr_vd(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_fhdr_vd"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_fhdr_vd:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setCamera_mhdr_array(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_array"    # Ljava/lang/String;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_array:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public setCamera_mhdr_b(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_b"    # Ljava/lang/String;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_b:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public setCamera_mhdr_bd(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_bd"    # Ljava/lang/String;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_bd:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public setCamera_mhdr_bvd(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_bvd"    # Ljava/lang/String;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_bvd:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public setCamera_mhdr_d(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_d"    # Ljava/lang/String;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_d:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public setCamera_mhdr_end_l_idx(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_end_l_idx"    # Ljava/lang/String;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_end_l_idx:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public setCamera_mhdr_ev(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_ev"    # Ljava/lang/String;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_ev:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setCamera_mhdr_hdr_fmccl_p1(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_hdr_fmccl_p1"    # Ljava/lang/String;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_fmccl_p1:Ljava/lang/String;

    .line 590
    return-void
.end method

.method public setCamera_mhdr_hdr_fmccl_p2(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_hdr_fmccl_p2"    # Ljava/lang/String;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_fmccl_p2:Ljava/lang/String;

    .line 598
    return-void
.end method

.method public setCamera_mhdr_hdr_fsms(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_hdr_fsms"    # Ljava/lang/String;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_fsms:Ljava/lang/String;

    .line 606
    return-void
.end method

.method public setCamera_mhdr_hdr_gdsl(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_hdr_gdsl"    # Ljava/lang/String;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_gdsl:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public setCamera_mhdr_hdr_grsl(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_hdr_grsl"    # Ljava/lang/String;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_grsl:Ljava/lang/String;

    .line 622
    return-void
.end method

.method public setCamera_mhdr_hdr_grt(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_hdr_grt"    # Ljava/lang/String;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_grt:Ljava/lang/String;

    .line 630
    return-void
.end method

.method public setCamera_mhdr_hdr_rrrt(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_hdr_rrrt"    # Ljava/lang/String;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_hdr_rrrt:Ljava/lang/String;

    .line 638
    return-void
.end method

.method public setCamera_mhdr_l_idx(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_l_idx"    # Ljava/lang/String;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_l_idx:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public setCamera_mhdr_th_0(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_th_0"    # Ljava/lang/String;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_0:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public setCamera_mhdr_th_1(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_th_1"    # Ljava/lang/String;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_1:Ljava/lang/String;

    .line 662
    return-void
.end method

.method public setCamera_mhdr_th_2(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_th_2"    # Ljava/lang/String;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_2:Ljava/lang/String;

    .line 670
    return-void
.end method

.method public setCamera_mhdr_th_3(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_th_3"    # Ljava/lang/String;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_th_3:Ljava/lang/String;

    .line 678
    return-void
.end method

.method public setCamera_mhdr_vb(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_vb"    # Ljava/lang/String;

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vb:Ljava/lang/String;

    .line 686
    return-void
.end method

.method public setCamera_mhdr_vbd(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_vbd"    # Ljava/lang/String;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vbd:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public setCamera_mhdr_vbvr(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_vbvr"    # Ljava/lang/String;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vbvr:Ljava/lang/String;

    .line 702
    return-void
.end method

.method public setCamera_mhdr_vd(Ljava/lang/String;)V
    .locals 0
    .param p1, "camera_mhdr_vd"    # Ljava/lang/String;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->camera_mhdr_vd:Ljava/lang/String;

    .line 710
    return-void
.end method

.method public setOptical_config_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "optical_config_version"    # Ljava/lang/String;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/camera/util/FihOpticalConfiguration;->optical_config_version:Ljava/lang/String;

    .line 718
    return-void
.end method
