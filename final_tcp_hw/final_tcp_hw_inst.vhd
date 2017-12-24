	component final_tcp_hw is
		port (
			clk_clk                             : in  std_logic                    := 'X';             -- clk
			reset_reset_n                       : in  std_logic                    := 'X';             -- reset_n
			tse_pcs_mac_tx_clock_connection_clk : in  std_logic                    := 'X';             -- clk
			tse_pcs_mac_rx_clock_connection_clk : in  std_logic                    := 'X';             -- clk
			tse_mac_status_connection_set_10    : in  std_logic                    := 'X';             -- set_10
			tse_mac_status_connection_set_1000  : in  std_logic                    := 'X';             -- set_1000
			tse_mac_status_connection_eth_mode  : out std_logic;                                       -- eth_mode
			tse_mac_status_connection_ena_10    : out std_logic;                                       -- ena_10
			tse_mac_rgmii_connection_rgmii_in   : in  std_logic_vector(3 downto 0) := (others => 'X'); -- rgmii_in
			tse_mac_rgmii_connection_rgmii_out  : out std_logic_vector(3 downto 0);                    -- rgmii_out
			tse_mac_rgmii_connection_rx_control : in  std_logic                    := 'X';             -- rx_control
			tse_mac_rgmii_connection_tx_control : out std_logic;                                       -- tx_control
			tse_mac_mdio_connection_mdc         : out std_logic;                                       -- mdc
			tse_mac_mdio_connection_mdio_in     : in  std_logic                    := 'X';             -- mdio_in
			tse_mac_mdio_connection_mdio_out    : out std_logic;                                       -- mdio_out
			tse_mac_mdio_connection_mdio_oen    : out std_logic;                                       -- mdio_oen
			led_export                          : out std_logic;                                       -- export
			switch_export                       : in  std_logic                    := 'X'              -- export
		);
	end component final_tcp_hw;

	u0 : component final_tcp_hw
		port map (
			clk_clk                             => CONNECTED_TO_clk_clk,                             --                             clk.clk
			reset_reset_n                       => CONNECTED_TO_reset_reset_n,                       --                           reset.reset_n
			tse_pcs_mac_tx_clock_connection_clk => CONNECTED_TO_tse_pcs_mac_tx_clock_connection_clk, -- tse_pcs_mac_tx_clock_connection.clk
			tse_pcs_mac_rx_clock_connection_clk => CONNECTED_TO_tse_pcs_mac_rx_clock_connection_clk, -- tse_pcs_mac_rx_clock_connection.clk
			tse_mac_status_connection_set_10    => CONNECTED_TO_tse_mac_status_connection_set_10,    --       tse_mac_status_connection.set_10
			tse_mac_status_connection_set_1000  => CONNECTED_TO_tse_mac_status_connection_set_1000,  --                                .set_1000
			tse_mac_status_connection_eth_mode  => CONNECTED_TO_tse_mac_status_connection_eth_mode,  --                                .eth_mode
			tse_mac_status_connection_ena_10    => CONNECTED_TO_tse_mac_status_connection_ena_10,    --                                .ena_10
			tse_mac_rgmii_connection_rgmii_in   => CONNECTED_TO_tse_mac_rgmii_connection_rgmii_in,   --        tse_mac_rgmii_connection.rgmii_in
			tse_mac_rgmii_connection_rgmii_out  => CONNECTED_TO_tse_mac_rgmii_connection_rgmii_out,  --                                .rgmii_out
			tse_mac_rgmii_connection_rx_control => CONNECTED_TO_tse_mac_rgmii_connection_rx_control, --                                .rx_control
			tse_mac_rgmii_connection_tx_control => CONNECTED_TO_tse_mac_rgmii_connection_tx_control, --                                .tx_control
			tse_mac_mdio_connection_mdc         => CONNECTED_TO_tse_mac_mdio_connection_mdc,         --         tse_mac_mdio_connection.mdc
			tse_mac_mdio_connection_mdio_in     => CONNECTED_TO_tse_mac_mdio_connection_mdio_in,     --                                .mdio_in
			tse_mac_mdio_connection_mdio_out    => CONNECTED_TO_tse_mac_mdio_connection_mdio_out,    --                                .mdio_out
			tse_mac_mdio_connection_mdio_oen    => CONNECTED_TO_tse_mac_mdio_connection_mdio_oen,    --                                .mdio_oen
			led_export                          => CONNECTED_TO_led_export,                          --                             led.export
			switch_export                       => CONNECTED_TO_switch_export                        --                          switch.export
		);

