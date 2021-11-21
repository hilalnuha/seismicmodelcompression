plot([data594Br(:,524) Dr_eds(:,524) Dr_edsq(:,524) Dr_dct(:,524) ],'linewidth',1.5)
set(gca,'FontSize',12);
set(gca,'FontWeight','normal');
legend('Original trace','EDSW M=2','EDSW M=2, Q=64 bit','DCT J=10, Q=64 bit')
xlabel('Time index');
ylabel('Amplitude');
axis([110 154 -(1.5*10^9) 1.5*10^9 ]);
grid